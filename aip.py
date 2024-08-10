import requests


def fetch_pokemon_data(pokemon_name):
    # API endpoint for Pokémon
    url = f"https://pokeapi.co/api/v2/pokemon/{pokemon_name.lower()}"

    try:
        # Send a GET request to the API
        response = requests.get(url)

        # Check if the request was successful
        if response.status_code == 200:
            # Parse the JSON response
            pokemon_data = response.json()
            return pokemon_data
        else:
            print(f"Failed to retrieve data for {pokemon_name}: {response.status_code}")
            return None
    except Exception as e:
        print(f"An error occurred: {e}")
        return None


def display_pokemon_data(pokemon_data):
    # Display basic information about the Pokémon
    if pokemon_data:
        print(f"Name: {pokemon_data['name'].capitalize()}")
        print(f"Height: {pokemon_data['height']} decimetres")
        print(f"Weight: {pokemon_data['weight']} hectograms")

        # Display types
        types = [t['type']['name'] for t in pokemon_data['types']]
        print(f"Types: {', '.join(types)}")

        # Display abilities
        abilities = [a['ability']['name'] for a in pokemon_data['abilities']]
        print(f"Abilities: {', '.join(abilities)}")
    else:
        print("No data to display.")


if __name__ == "__main__":
    # Fetch and display data for a specific Pokémon
    pokemon_name = "Pikachu"  # You can change this to any Pokémon name
    pokemon_data = fetch_pokemon_data(pokemon_name)
    display_pokemon_data(pokemon_data)
