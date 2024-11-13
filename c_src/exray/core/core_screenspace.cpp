#include "../exray.cpp"
#include "core_screenspace.h"
#include "../type_converter.cpp"

UNIFEX_TERM get_mouse_ray(UnifexEnv *env, exVector2 mouse_position, exCamera3D camera){
	return get_mouse_ray_result(env, ToExRay(GetMouseRay(ToVector2(mouse_position), ToCamera3D(camera))));
}

UNIFEX_TERM get_camera_matrix(UnifexEnv *env, exCamera3D camera){
	return get_camera_matrix_result(env, ToExMatrix(GetCameraMatrix(ToCamera3D(camera))));
}

UNIFEX_TERM get_camera_matrix_2d(UnifexEnv *env, exCamera2D camera){
	return get_camera_matrix_2d_result(env, ToExMatrix(GetCameraMatrix2D(ToCamera2D(camera))));
}

UNIFEX_TERM get_world_to_screen(UnifexEnv *env, exVector3 position, exCamera3D camera){
	return get_world_to_screen_result(env, ToExVector2(GetWorldToScreen(ToVector3(position), ToCamera3D(camera))));
}

UNIFEX_TERM get_screen_to_world_2d(UnifexEnv *env, exVector2 position, exCamera2D camera){
	return get_screen_to_world_2d_result(env, ToExVector2(GetScreenToWorld2D(ToVector2(position), ToCamera2D(camera))));
}

UNIFEX_TERM get_world_to_screen_ex(UnifexEnv *env, exVector3 position, exCamera3D camera, int width, int height){
	return get_world_to_screen_ex_result(env, ToExVector2(GetWorldToScreenEx(ToVector3(position), ToCamera3D(camera), width, height)));
}

UNIFEX_TERM get_world_to_screen_2d(UnifexEnv *env, exVector2 position, exCamera2D camera){
	return get_world_to_screen_2d_result(env, ToExVector2(GetWorldToScreen2D(ToVector2(position), ToCamera2D(camera))));
}
