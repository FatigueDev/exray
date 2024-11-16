module(Exray.Core.Random.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

# void SetRandomSeed(unsigned int seed);                      // Set the seed for the random number generator
spec(set_random_seed(seed :: unsigned) :: :ok)

# int GetRandomValue(int min, int max);                       // Get a random value between min and max (both included)
spec(get_random_value(min :: int, max :: int) :: random_value :: int)

# int *LoadRandomSequence(unsigned int count, int min, int max); // Load random values sequence, no values repeated
spec(load_random_sequence(count :: unsigned, min :: int, max :: int) :: random_sequence :: [int])

# void UnloadRandomSequence(int *sequence);                   // Unload random values sequence
spec(unload_random_sequence(sequence :: [int]) :: :ok)
