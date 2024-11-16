#include "../exray.cpp"
#include "core_window.h"
#include "../type_converter.cpp"

UNIFEX_TERM init_window(UnifexEnv* env, int width, int height, char* title) {
    InitWindow(width, height, title);
    return init_window_result(env);
}

UNIFEX_TERM close_window(UnifexEnv* env) {
    CloseWindow();
    return close_window_result(env);
}

UNIFEX_TERM window_should_close(UnifexEnv* env) {
    return window_should_close_result(env, WindowShouldClose());
}

UNIFEX_TERM window_is_ready(UnifexEnv *env){
    return window_is_ready_result(env, IsWindowReady());
}

UNIFEX_TERM window_is_fullscreen(UnifexEnv *env) {
    return window_is_fullscreen_result(env, IsWindowFullscreen());
}

UNIFEX_TERM window_is_hidden(UnifexEnv *env){
    return window_is_hidden_result(env, IsWindowHidden());
}

UNIFEX_TERM window_is_minimized(UnifexEnv *env){
    return window_is_minimized_result(env, IsWindowMinimized());
}

UNIFEX_TERM window_is_maximized(UnifexEnv *env){
    return window_is_maximized_result(env, IsWindowMaximized());
}

UNIFEX_TERM window_is_focused(UnifexEnv *env){
    return window_is_focused_result(env, IsWindowFocused());
}

UNIFEX_TERM window_is_resized(UnifexEnv *env){
    return window_is_resized_result(env, IsWindowResized());
}

UNIFEX_TERM window_is_state(UnifexEnv* env, unsigned int flag){
    return window_is_state_result(env, IsWindowState(flag));
}

UNIFEX_TERM set_window_state(UnifexEnv *env, unsigned int flags){
    SetWindowState(flags);
    return set_window_state_result(env);
}

UNIFEX_TERM clear_window_state(UnifexEnv *env, unsigned int flags){
    ClearWindowState(flags);
    return clear_window_state_result(env);
}

UNIFEX_TERM toggle_fullscreen(UnifexEnv *env){
    ToggleFullscreen();
    return toggle_fullscreen_result(env);
}

UNIFEX_TERM toggle_borderless_windowed(UnifexEnv *env){
    ToggleBorderlessWindowed();
    return toggle_borderless_windowed_result(env);
}

UNIFEX_TERM maximize_window(UnifexEnv *env){
    MaximizeWindow();
    return maximize_window_result(env);
}

UNIFEX_TERM minimize_window(UnifexEnv *env){
    MinimizeWindow();
    return minimize_window_result(env);
}

UNIFEX_TERM restore_window(UnifexEnv *env){
    RestoreWindow();
    return restore_window_result(env);
}

UNIFEX_TERM set_window_icon(UnifexEnv *env, exImage image){
    SetWindowIcon(ToImage(image));
    return set_window_icon_result(env);
}

UNIFEX_TERM set_window_icons(UnifexEnv *env, exImage* images, unsigned int images_length){
    SetWindowIcons(ToImagePtr(images, images_length), images_length);
    return set_window_icons_result(env);
}

UNIFEX_TERM set_window_title(UnifexEnv *env, char *title){
    SetWindowTitle(title);
    std::cout << "SET WINDOW TITLE : done" << std::endl;
    return set_window_title_result(env);
}

UNIFEX_TERM set_window_position(UnifexEnv *env, int x, int y){
    SetWindowPosition(x, y);
    return set_window_position_result(env);
}

UNIFEX_TERM set_window_monitor(UnifexEnv *env, int monitor){
    SetWindowMonitor(monitor);
    return set_window_monitor_result(env);
}

UNIFEX_TERM set_window_min_size(UnifexEnv *env, int width, int height){
    SetWindowMinSize(width, height);
    return set_window_min_size_result(env);
}

UNIFEX_TERM set_window_max_size(UnifexEnv *env, int width, int height){
    SetWindowMaxSize(width, height);
    return set_window_max_size_result(env);
}

UNIFEX_TERM set_window_size(UnifexEnv *env, int width, int height){
    SetWindowSize(width, height);
    return set_window_size_result(env);
}

UNIFEX_TERM set_window_opacity(UnifexEnv *env, double opacity){
    SetWindowOpacity(opacity);
    return set_window_opacity_result(env);
}

UNIFEX_TERM set_window_focused(UnifexEnv *env){
    SetWindowFocused();
    return set_window_focused_result(env);
}

UNIFEX_TERM get_window_handle(UnifexEnv *env){
    State* state = unifex_alloc_state(env);
    state->obj = GetWindowHandle();
    return get_window_handle_result(env, state);
}

UNIFEX_TERM get_screen_width(UnifexEnv *env){
    return get_screen_width_result(env, GetScreenWidth());
}

UNIFEX_TERM get_screen_height(UnifexEnv *env){
    return get_screen_height_result(env, GetScreenHeight());
}

UNIFEX_TERM get_render_width(UnifexEnv *env){
    return get_render_width_result(env, GetRenderWidth());
}

UNIFEX_TERM get_render_height(UnifexEnv *env){
    return get_render_height_result(env, GetRenderHeight());
}

UNIFEX_TERM get_monitor_count(UnifexEnv *env){
    return get_monitor_count_result(env, GetMonitorCount());
}

UNIFEX_TERM get_current_monitor(UnifexEnv *env){
    return get_current_monitor_result(env, GetCurrentMonitor());
}

UNIFEX_TERM get_monitor_position(UnifexEnv *env, int monitor){
    exVector2 result = ToExVector2(GetMonitorPosition(monitor));
    return get_monitor_position_result(env, result);
}

UNIFEX_TERM get_monitor_width(UnifexEnv *env, int monitor){
    return get_monitor_width_result(env, GetMonitorWidth(monitor));
}

UNIFEX_TERM get_monitor_height(UnifexEnv *env, int monitor){
    return get_monitor_height_result(env, GetMonitorHeight(monitor));
}

UNIFEX_TERM get_monitor_physical_width(UnifexEnv *env, int monitor){
    return get_monitor_physical_width_result(env, GetMonitorPhysicalWidth(monitor));
}

UNIFEX_TERM get_monitor_physical_height(UnifexEnv *env, int monitor){
    return get_monitor_physical_height_result(env, GetMonitorPhysicalHeight(monitor));
}

UNIFEX_TERM get_monitor_refresh_rate(UnifexEnv *env, int monitor){
    return get_monitor_refresh_rate_result(env, GetMonitorRefreshRate(monitor));
}

UNIFEX_TERM get_window_position(UnifexEnv *env){
    return get_window_position_result(env, ToExVector2(GetWindowPosition()));
}

UNIFEX_TERM get_window_scale_dpi(UnifexEnv *env){
    return get_window_scale_dpi_result(env, ToExVector2(GetWindowScaleDPI()));
}

UNIFEX_TERM get_monitor_name(UnifexEnv *env, int monitor){
    return get_monitor_name_result(env, GetMonitorName(monitor));
}

UNIFEX_TERM set_clipboard_text(UnifexEnv *env, char *text){
    SetClipboardText(text);
    return set_clipboard_text_result(env);
}

UNIFEX_TERM get_clipboard_text(UnifexEnv *env){
    return get_clipboard_text_result(env, GetClipboardText());
}

UNIFEX_TERM enable_event_waiting(UnifexEnv *env){
    EnableEventWaiting();
    return enable_event_waiting_result(env);
}

UNIFEX_TERM disable_event_waiting(UnifexEnv *env){
    DisableEventWaiting();
    return disable_event_waiting_result(env);
}