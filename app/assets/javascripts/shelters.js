$(document).on('turbolinks:load', function() {

  //every time the next button is clicked, remove the current panels class of visible and apply it to the next and fade it in.
  $("button.next-page").on("click", function(e){
    e.preventDefault();
    $(this).closest("article").removeClass("visible").hide().next().addClass("visible").fadeIn();
  });

  // every time the prev button is clicked, remove the current panels class of visible and apply it to the prev and fade it in.
  $("button.prev-page").on("click", function(e){
    e.preventDefault();
    $(this).closest("article").removeClass("visible").hide().prev().addClass("visible").fadeIn();
  });

  //When an animal type is chosen, the available breeds for that animal type become available.
  $("#pet_animal_type").on('change', function(){
    var $animal_type = $(this).val()
    var $breed = $("#pet_breed")

    if ($animal_type == "Rabbit") {
      var rabbit_breeds = ["American", "American Fuzzy Lop", "American Sable", "Angora Rabbit", "Belgian Hare", "Beveren", "Britannia Petite", "Bunny Rabbit", "Californian", "Champagne D'Argent", "Checkered Giant", "Chinchilla", "Cinnamon", "Creme D'Argent", "Dutch", "Dwarf", "Dwarf Eared", "English Lop", "English Spot", "Flemish Giant", "Florida White", "French Lop", "Harlequin", "Havana", "Himalayan", "Holland Lop", "Hotot", "Jersey Wooly", "Lilac", "Lionhead", "Lop Eared", "Mini Lop", "Mini Rex", "Netherland Dwarf", "New Zealand", "Palomino", "Polish", "Rex", "Rhinelander", "Satin", "Silver", "Silver Fox", "Silver Marten", "Tan"]

      $breed.empty()
      rabbit_breeds.forEach(function(value) {
        $breed.append($("<option></option>").attr("value", value).text(value))
      })
    }

    if ($animal_type == "Reptile") {
      var reptile_breeds = ["Asian Box", "Ball Python", "Bearded Dragon", "Boa", "Boa Constrictor", "Box", "Bull", "Bullfrog", "Burmese Python", "Chameleon", "Corn / Rat", "Eastern Box", "Fire Salamander", "Fire-Bellied", "Fire-Bellied Newt", "Florida Box", "Freshwater Fish", "Frog", "Garter / Ribbon", "Gecko", "Goldfish", "Hermit Crab", "Horned Frog", "Iguana", "King / Milk", "Leopard", "Leopard Frog", "Lizard", "Mississippi Map Turtle", "Monitor", "Mud", "Musk", "Oregon Newt", "Ornamental Box", "Other", "Paddle Tailed Newt", "Painted", "Python", "Red Foot", "Red-Eared Slider", "Russian", "Saltwater Fish", "Scorpion", "Snake", "Snapping", "Soft Shell", "Southern", "Sulcata", "Tarantula", "Three-Toed Box", "Tiger Salamander", "Toad", "Tortoise", "Tree Frog", "Turtle", "Uromastyx", "Water Dragon", "Yellow-Bellied Slider"]

      $breed.empty()
      reptile_breeds.forEach(function(value) {
        $breed.append($("<option></option>").attr("value", value).text(value))
      })
    }

    if ($animal_type == "Horse") {
      var horse_breeds = ["Appaloosa", "Arabian", "Belgian", "Clydesdale", "Connemara", "Curly Horse", "Donkey", "Draft", "Friesian", "Gaited", "Grade", "Haflinger", "Icelandic Horse", "Lipizzan", "Miniature Horse", "Missouri Foxtrotter", "Morgan", "Mule", "Mustang", "Paint / Pinto", "Palomino", "Paso Fino", "Percheron", "Peruvian Paso", "Pony", "Pony of the Americas", "Quarterhorse", "Rocky Mountain Horse", "Saddlebred", "Shetland Pony", "Standardbred", "Tennessee Walker", "Thoroughbred", "Warmblood"]

      $breed.empty()
      horse_breeds.forEach(function(value) {
        $breed.append($("<option></option>").attr("value", value).text(value))
      })
    }

    if ($animal_type == "Barnyard") {
      var barnyard_breeds = ["Alpaca", "Alpine", "Angora", "Angus", "Barbados", "Boer", "Cow", "Duroc", "Goat", "Hampshire", "Holstein", "Jersey", "LaMancha", "Landrace", "Llama", "Merino", "Mouflan", "Myotonic / Fainting", "Nigerian Dwarf", "Nubian", "Oberhasli", "Pig", "Pot Bellied", "Pygmy", "Saanen", "Sheep", "Shetland", "Toggenburg", "Vietnamese Pot Bellied", "Yorkshire"]

      $breed.empty()
      barnyard_breeds.forEach(function(value) {
        $breed.append($("<option></option>").attr("value", value).text(value))
      })
    }

    if ($animal_type == "Small &amp; Furry") {
      var smallfurry_breeds = ["Abyssinian", "Chinchilla", "Degu", "Dwarf Hamster", "Ferret", "Gerbil", "Guinea Pig", "Hamster", "Hedgehog", "Mouse", "Peruvian", "Prairie Dog", "Rat", "Rex", "Short-Haired", "Silkie / Sheltie", "Skunk", "Sugar Glider", "Teddy"]

      $breed.empty()
      smallfurry_breeds.forEach(function(value) {
        $breed.append($("<option></option>").attr("value", value).text(value))
      })
    }

    if ($animal_type == "Cat") {
      var cat_breeds = ["Abyssinian", "American Curl", "American Shorthair", "American Wirehair", "Applehead Siamese", "Balinese", "Bengal", "Birman", "Bobtail", "Bombay", "British Shorthair", "Burmese", "Burmilla", "Calico", "Canadian Hairless", "Chartreux", "Chausie", "Chinchilla", "Cornish Rex", "Cymric", "Devon Rex", "Dilute Calico", "Dilute Tortoiseshell", "Domestic Long Hair", "Domestic Medium Hair", "Domestic Short Hair", "Egyptian Mau", "Exotic Shorthair", "Extra-Toes Cat / Hemingway Polydactyl", "Havana", "Himalayan", "Japanese Bobtail", "Javanese", "Korat", "LaPerm", "Maine Coon", "Manx", "Munchkin", "Nebelung", "Norwegian Forest Cat", "Ocicat", "Oriental Long Hair", "Oriental Short Hair", "Oriental Tabby", "Persian", "Pixie-Bob", "Ragamuffin", "Ragdoll", "Russian Blue", "Scottish Fold", "Selkirk Rex", "Siamese", "Siberian", "Silver", "Singapura", "Snowshoe", "Somali", "Sphynx / Hairless Cat", "Tabby", "Tiger", "Tonkinese", "Torbie", "Tortoiseshell", "Turkish Angora", "Turkish Van", "Tuxedo"]

      $breed.empty()
      cat_breeds.forEach(function(value) {
        $breed.append($("<option></option>").attr("value", value).text(value))
      })
    }

    if ($animal_type == "Dog") {
      var dog_breeds = ["Affenpinscher", "Afghan Hound", "Airedale Terrier", "Akbash", "Akita", "Alaskan Malamute", "American Bulldog", "American Eskimo Dog", "American Hairless Terrier", "American Staffordshire Terrier", "American Water Spaniel", "Anatolian Shepherd", "Appenzell Mountain Dog", "Australian Cattle Dog / Blue Heeler", "Australian Kelpie", "Australian Shepherd", "Australian Terrier", "Basenji", "Basset Hound", "Beagle", "Bearded Collie", "Beauceron", "Bedlington Terrier", "Belgian Shepherd / Laekenois", "Belgian Shepherd / Malinois", "Belgian Shepherd / Sheepdog", "Belgian Shepherd / Tervuren", "Bernese Mountain Dog", "Bichon Frise", "Black and Tan Coonhound", "Black Labrador Retriever", "Black Mouth Cur", "Black Russian Terrier", "Bloodhound", "Blue Lacy", "Bluetick Coonhound", "Boerboel", "Bolognese", "Border Collie", "Border Terrier", "Borzoi", "Boston Terrier", "Bouvier des Flanders", "Boxer", "Boykin Spaniel", "Briard", "Brittany Spaniel", "Brussels Griffon", "Bull Terrier", "Bullmastiff", "Cairn Terrier", "Canaan Dog", "Cane Corso Mastiff", "Carolina Dog", "Catahoula Leopard Dog", "Cattle Dog", "Caucasian Sheepdog / Caucasian Ovtcharka", "Cavalier King Charles Spaniel", "Chesapeake Bay Retriever", "Chihuahua", "Chinese Crested Dog", "Chinese Foo Dog", "Chinook", "Chocolate Labrador Retriever", "Chow Chow", "Cirneco dell'Etna", "Clumber Spaniel", "Cockapoo", "Cocker Spaniel", "Collie", "Coonhound", "Corgi", "Coton de Tulear", "Curly-Coated Retriever", "Dachshund", "Dalmatian", "Dandi Dinmont Terrier", "Doberman Pinscher", "Dogo Argentino", "Dogue de Bordeaux", "Dutch Shepherd", "English Bulldog", "English Cocker Spaniel", "English Coonhound", "English Pointer", "English Setter", "English Shepherd", "English Springer Spaniel", "English Toy Spaniel", "Entlebucher", "Eskimo Dog", "Feist", "Field Spaniel", "Fila Brasileiro", "Finnish Lapphund", "Finnish Spitz", "Flat-Coated Retriever", "Fox Terrier", "Foxhound", "French Bulldog", "Galgo Spanish Greyhound", "German Pinscher", "German Shepherd Dog", "German Shorthaired Pointer", "German Spitz", "German Wirehaired Pointer", "Giant Schnauzer", "Glen of Imaal Terrier", "Golden Retriever", "Gordon Setter", "Great Dane", "Great Pyrenees", "Greater Swiss Mountain Dog", "Greyhound", "Hamiltonstovare", "Harrier", "Havanese", "Hound", "Hovawart", "Husky", "Ibizan Hound", "Icelandic Sheepdog", "Illyrian Sheepdog", "Irish Setter", "Irish Terrier", "Irish Water Spaniel", "Irish Wolfhound", "Italian Greyhound", "Italian Spinone", "Jack Russell Terrier", "Jack Russell Terrier (Parson)", "Japanese Chin", "Jindo", "Kai Dog", "Karelian Bear Dog", "Keeshond", "Kerry Blue Terrier", "Kishu", "Klee Kai", "Komondor", "Kuvasz", "Kyi Leo", "Labrador Retriever", "Lakeland Terrier", "Lancashire Heeler", "Leonberger", "Lhasa Apso", "Lowchen", "Maltese", "Manchester Terrier", "Maremma Sheepdog", "Mastiff", "McNab", "Miniature Pinscher", "Miniature Schnauzer", "Mixed Breed", "Mountain Cur", "Mountain Dog", "Munsterlander", "Neapolitan Mastiff", "New Guinea Singing Dog", "Newfoundland Dog", "Norfolk Terrier", "Norwegian Buhund", "Norwegian Elkhound", "Norwegian Lundehund", "Norwich Terrier", "Nova Scotia Duck Tolling Retriever", "Old English Sheepdog", "Otterhound", "Papillon", "Patterdale Terrier / Fell Terrier", "Pekingese", "Peruvian Inca Orchid", "Petit Basset Griffon Vendeen", "Pharaoh Hound", "Pit Bull Terrier", "Plott Hound", "Podengo Portugueso", "Pointer", "Polish Lowland Sheepdog", "Pomeranian", "Poodle", "Portuguese Water Dog", "Presa Canario", "Pug", "Puli", "Pumi", "Rat Terrier", "Redbone Coonhound", "Retriever", "Rhodesian Ridgeback", "Rottweiler", "Rough Collie", "Saint Bernard / St. Bernard", "Saluki", "Samoyed", "Sarplaninac", "Schipperke", "Schnauzer", "Scottish Deerhound", "Scottish Terrier Scottie", "Sealyham Terrier", "Setter", "Shar Pei", "Sheep Dog", "Shepherd", "Shetland Sheepdog Sheltie", "Shiba Inu", "Shih Tzu", "Siberian Husky", "Silky Terrier", "Skye Terrier", "Sloughi", "Smooth Collie", "Smooth Fox Terrier", "South Russian Ovtcharka", "Spaniel", "Spanish Water Dog", "Spitz", "Staffordshire Bull Terrier", "Standard Poodle", "Standard Schnauzer", "Sussex Spaniel", "Swedish Vallhund", "Terrier", "Thai Ridgeback", "Tibetan Mastiff", "Tibetan Spaniel", "Tibetan Terrier", "Tosa Inu", "Toy Fox Terrier", "Treeing Walker Coonhound", "Vizsla", "Weimaraner", "Welsh Corgi", "Welsh Springer Spaniel", "Welsh Terrier", "West Highland White Terrier Westie", "Wheaten Terrier", "Whippet", "White German Shepherd", "Wire Fox Terrier", "Wirehaired Dachshund", "Wirehaired Pointing Griffon", "Wirehaired Terrier", "Xoloitzcuintle / Mexican Hairless", "Yellow Labrador Retriever", "Yorkshire Terrier Yorkie"]

      $breed.empty()
      dog_breeds.forEach(function(value) {
        $breed.append($("<option></option>").attr("value", value).text(value))
      })
    }
  })

});
