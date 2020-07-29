/// @author YellowAfterlife

#include "stdafx.h"
#include <stdio.h>

#define dllx extern "C" __declspec(dllexport)
HCURSOR current = NULL;
WCHAR* wbuf = new WCHAR[16];
size_t wbuf_size = 16;
WNDPROC window_set_cursor_base = nullptr;
HWND window_set_cursor_hwnd = nullptr;
LRESULT CALLBACK window_set_cursor_hook(HWND hwnd, UINT msg, WPARAM wp, LPARAM lp) {
    if (current != NULL) switch (msg) {
        case WM_SETCURSOR: case WM_MOUSEMOVE:
            if ((lp & 0xffff) != 1) break;
            SetCursor(current);
            return TRUE;
    }
    return CallWindowProc(window_set_cursor_base, hwnd, msg, wp, lp);
}
dllx double window_set_cursor_init_raw(char* cwnd) {
    if (window_set_cursor_base == nullptr) {
        window_set_cursor_hwnd = (HWND)cwnd;
        window_set_cursor_base = (WNDPROC)SetWindowLongPtr((HWND)cwnd, GWL_WNDPROC, (LONG_PTR)window_set_cursor_hook);
    }
    return 1;
}
dllx double window_set_cursor_normal_raw() {
    if (current != NULL) {
        SetCursor(NULL);
        DestroyCursor(current);
        current = NULL;
    }
    return 1;
}
dllx double window_set_cursor_cleanup() {
    window_set_cursor_normal_raw();
    if (window_set_cursor_base != nullptr) {
        (WNDPROC)SetWindowLongPtr(window_set_cursor_hwnd, GWL_WNDPROC, (LONG_PTR)window_set_cursor_base);
    }
    return 1;
}
dllx double window_set_cursor_path_raw(char* cwnd, char* path) {
    window_set_cursor_init_raw(cwnd);
    size_t size = MultiByteToWideChar(CP_UTF8, 0, path, -1, NULL, 0);
    if (wbuf_size < size) {
        delete wbuf;
        wbuf_size = size;
        wbuf = new WCHAR[size];
    }
    MultiByteToWideChar(CP_UTF8, 0, path, -1, wbuf, size);
    if (current != NULL) {
        DestroyCursor(current);
        current = NULL;
    }
    current = (HCURSOR)LoadImage(NULL, wbuf, IMAGE_CURSOR, 0, 0, LR_LOADFROMFILE|LR_CREATEDIBSECTION);
    if (current == NULL) return GetLastError();
    SetCursor(current);
    return 1;
}
dllx double window_set_cursor_buffer_raw(char* data, double size) {
    DWORD dwSize = (DWORD)size;
    current = (HCURSOR)CreateIconFromResource((PBYTE)data, dwSize, FALSE, 0x00030000);
    if (current == NULL) return GetLastError();
    SetCursor(current);
    return 1;
}
