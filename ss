import random

# Define the number of samples you want to generate
num_samples = 100

# Define the proportions of each cluster
cluster_probabilities = {
    "Cluster 1": 0.1,
    "Cluster 2": 0.1,
    "Cluster 3": 0.1,
    "Cluster 4": 0.1,
    "Cluster 5": 0.1,
    "Cluster 6": 0.1,
    "Cluster 7": 0.4,
}

# Generate random samples and assign them to clusters based on probabilities
samples = []
for _ in range(num_samples):
    cluster = random.choices(list(cluster_probabilities.keys()), weights=list(cluster_probabilities.values()))[0]
    samples.append(cluster)

# Print the generated samples and their clusters
for i, sample in enumerate(samples, start=1):
    print(f"Sample {i}: {sample}")
