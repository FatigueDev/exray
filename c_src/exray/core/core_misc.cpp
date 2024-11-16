#include "../exray.cpp"
#include "core_misc.h"

UNIFEX_TERM take_screenshot(UnifexEnv *env, char *string) {
    TakeScreenshot(string);
    return take_screenshot_result(env);
}

UNIFEX_TERM set_config_flags(UnifexEnv *env, unsigned int flags) {
    SetConfigFlags(flags);
    return set_config_flags_result(env);
}

UNIFEX_TERM open_url(UnifexEnv *env, char *url) {
    OpenURL(url);
    return open_url_result(env);
}