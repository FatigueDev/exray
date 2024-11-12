#include "../exray.cpp"
#include "core_window.h"
#include "../type_converter.cpp"

UNIFEX_TERM init_window(UnifexEnv* env, int width, int height, char* title) {
    InitWindow(width, height, title);
    return init_window_result_ok(env);
}

UNIFEX_TERM close_window(UnifexEnv* env) {
    CloseWindow();
    return close_window_result_ok(env);
}

UNIFEX_TERM window_should_close(UnifexEnv* env) {
    return window_should_close_result_ok(env, WindowShouldClose());
}

UNIFEX_TERM is_window_ready(UnifexEnv *env){
    return is_window_ready_result_ok(env, IsWindowReady());
}

UNIFEX_TERM is_window_fullscreen(UnifexEnv *env) {
    return is_window_fullscreen_result_ok(env, IsWindowFullscreen());
}

UNIFEX_TERM is_window_hidden(UnifexEnv *env){
    return is_window_hidden_result_ok(env, IsWindowHidden());
}

UNIFEX_TERM is_window_minimized(UnifexEnv *env){
    return is_window_minimized_result_ok(env, IsWindowMinimized());
}

UNIFEX_TERM is_window_maximized(UnifexEnv *env){
    return is_window_maximized_result_ok(env, IsWindowMaximized());
}

UNIFEX_TERM is_window_focused(UnifexEnv *env){
    return is_window_focused_result_ok(env, IsWindowFocused());
}

UNIFEX_TERM is_window_resized(UnifexEnv *env){
    return is_window_resized_result_ok(env, IsWindowResized());
}

UNIFEX_TERM is_window_state(UnifexEnv* env, unsigned int flag){
    return is_window_state_result_ok(env, IsWindowState(flag));
}

UNIFEX_TERM set_window_state(UnifexEnv *env, unsigned int flags){
    SetWindowState(flags);
    return set_window_state_result_ok(env);
}

UNIFEX_TERM clear_window_state(UnifexEnv *env, unsigned int flags){
    ClearWindowState(flags);
    return clear_window_state_result_ok(env);
}

UNIFEX_TERM toggle_fullscreen(UnifexEnv *env){
    ToggleFullscreen();
    return toggle_fullscreen_result_ok(env);
}

UNIFEX_TERM toggle_borderless_windowed(UnifexEnv *env){
    ToggleBorderlessWindowed();
    return toggle_borderless_windowed_result_ok(env);
}

UNIFEX_TERM maximize_window(UnifexEnv *env){
    MaximizeWindow();
    return maximize_window_result_ok(env);
}

UNIFEX_TERM minimize_window(UnifexEnv *env){
    MinimizeWindow();
    return minimize_window_result_ok(env);
}

UNIFEX_TERM restore_window(UnifexEnv *env){
    RestoreWindow();
    return restore_window_result_ok(env);
}

UNIFEX_TERM set_window_icon(UnifexEnv *env, exImage image){
    SetWindowIcon(ToImage(image));
    return set_window_icon_result_ok(env);
}

UNIFEX_TERM set_window_icons(UnifexEnv *env, exImage* images, unsigned int images_length){
    
    Image buffer[images_length];

    for(unsigned int i = 0; i < images_length; i++){
        buffer[i] = ToImage(images[i]);
    }

    SetWindowIcons(buffer, images_length);

    return set_window_icons_result_ok(env);
}

UNIFEX_TERM set_window_title(UnifexEnv *env, char *title){
    SetWindowTitle(title);
    return set_window_title_result_ok(env);
}

UNIFEX_TERM set_window_position(UnifexEnv *env, int x, int y){
    SetWindowPosition(x, y);
    return set_window_position_result_ok(env);
}

UNIFEX_TERM set_window_monitor(UnifexEnv *env, int monitor){
    SetWindowMonitor(monitor);
    return set_window_monitor_result_ok(env);
}

UNIFEX_TERM set_window_min_size(UnifexEnv *env, int width, int height){
    SetWindowMinSize(width, height);
    return set_window_min_size_result_ok(env);
}

UNIFEX_TERM set_window_max_size(UnifexEnv *env, int width, int height){
    SetWindowMaxSize(width, height);
    return set_window_max_size_result_ok(env);
}

UNIFEX_TERM set_window_size(UnifexEnv *env, int width, int height){
    SetWindowSize(width, height);
    return set_window_size_result_ok(env);
}

UNIFEX_TERM set_window_opacity(UnifexEnv *env, double opacity){
    SetWindowOpacity(opacity);
    return set_window_opacity_result_ok(env);
}

UNIFEX_TERM set_window_focused(UnifexEnv *env){
    SetWindowFocused();
    return set_window_focused_result_ok(env);
}

UNIFEX_TERM get_window_handle(UnifexEnv *env){
    State* state = unifex_alloc_state(env);
    state->obj = GetWindowHandle();
    return get_window_handle_result_ok(env, state);
}

UNIFEX_TERM get_screen_width(UnifexEnv *env){
    return get_screen_width_result_ok(env, GetScreenWidth());
}

UNIFEX_TERM get_screen_height(UnifexEnv *env){
    return get_screen_height_result_ok(env, GetScreenHeight());
}

UNIFEX_TERM get_render_width(UnifexEnv *env){
    return get_render_width_result_ok(env, GetRenderWidth());
}

UNIFEX_TERM get_render_height(UnifexEnv *env){
    return get_render_height_result_ok(env, GetRenderHeight());
}

UNIFEX_TERM get_monitor_count(UnifexEnv *env){
    return get_monitor_count_result_ok(env, GetMonitorCount());
}

UNIFEX_TERM get_current_monitor(UnifexEnv *env){
    return get_current_monitor_result_ok(env, GetCurrentMonitor());
}

UNIFEX_TERM get_monitor_position(UnifexEnv *env, int monitor){
    exVector2 result = ToExVector2(GetMonitorPosition(monitor));
    return get_monitor_position_result_ok(env, result);
}

UNIFEX_TERM get_monitor_width(UnifexEnv *env, int monitor){
    return get_monitor_width_result_ok(env, GetMonitorWidth(monitor));
}

UNIFEX_TERM get_monitor_height(UnifexEnv *env, int monitor){
    return get_monitor_height_result_ok(env, GetMonitorHeight(monitor));
}

UNIFEX_TERM get_monitor_physical_width(UnifexEnv *env, int monitor){
    return get_monitor_physical_width_result_ok(env, GetMonitorPhysicalWidth(monitor));
}

UNIFEX_TERM get_monitor_physical_height(UnifexEnv *env, int monitor){
    return get_monitor_physical_height_result_ok(env, GetMonitorPhysicalHeight(monitor));
}

UNIFEX_TERM get_monitor_refresh_rate(UnifexEnv *env, int monitor){
    return get_monitor_refresh_rate_result_ok(env, GetMonitorRefreshRate(monitor));
}

UNIFEX_TERM get_window_position(UnifexEnv *env){
    exVector2 result = ToExVector2(GetWindowPosition());
    return get_window_position_result_ok(env, result);
}

UNIFEX_TERM get_window_scale_dpi(UnifexEnv *env){
    exVector2 result = ToExVector2(GetWindowScaleDPI());
    return get_window_scale_dpi_result_ok(env, result);
}

UNIFEX_TERM get_monitor_name(UnifexEnv *env, int monitor){
    const char* result = GetMonitorName(monitor);
    return get_monitor_name_result_ok(env, result);
}

UNIFEX_TERM set_clipboard_text(UnifexEnv *env, char *text){
    SetClipboardText(text);
    return set_clipboard_text_result_ok(env);
}

UNIFEX_TERM get_clipboard_text(UnifexEnv *env){
    const char* result = GetClipboardText();
    return get_clipboard_text_result_ok(env, result);
}

UNIFEX_TERM enable_event_waiting(UnifexEnv *env){
    EnableEventWaiting();
    return enable_event_waiting_result_ok(env);
}

UNIFEX_TERM disable_event_waiting(UnifexEnv *env){
    DisableEventWaiting();
    return disable_event_waiting_result_ok(env);
}