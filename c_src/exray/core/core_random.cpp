#include "../exray.cpp"
#include "core_random.h"

UNIFEX_TERM set_random_seed(UnifexEnv *env, unsigned int seed){
    SetRandomSeed(seed);
    return set_random_seed_result(env);
}

UNIFEX_TERM get_random_value(UnifexEnv *env, int min, int max){
    return get_random_value_result(env, GetRandomValue(min, max));
}

UNIFEX_TERM load_random_sequence(UnifexEnv *env, unsigned int count, int min, int max){
    return load_random_sequence_result(env, LoadRandomSequence(count, min, max), count);
}

UNIFEX_TERM unload_random_sequence(UnifexEnv *env, int *sequence, unsigned int sequence_length){
    UNIFEX_UNUSED(sequence_length);
    UnloadRandomSequence(sequence);
    return unload_random_sequence_result(env);
}