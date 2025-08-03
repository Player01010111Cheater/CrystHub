local items = {
    ["pets"] = {
        ["Common"] = {
            ["Bunny"] = true,
            ["Dog"] = true,
            ["Golden Lab"] = true,
            ["Starfish"] = true,
            ["Seagull"] = true,
            ["Crab"] = true
        },

        ["Uncommon"] = {
            ["Black Bunny"] = true,
            ["Chicken"] = true,
            ["Cat"] = true,
            ["Deer"] = true,
            ["Bee"] = true
        },

        ["Rare"] = {
            ["Orange Tabby"] = true,
            ["Spotted Deer"] = true,
            ["Pig"] = true,
            ["Rooster"] = true,
            ["Monkey"] = true,
            ["Flamingo"] = true,
            ["Toucan"] = true,
            ["Sea Turtle"] = true,
            ["Orangutan"] = true,
            ["Seal"] = true,
            ["Honey Bee"] = true,
            ["Wasp"] = true
        },

        ["Legendary"] = {
            ["Tarantula Hawk"] = true,
            ["Raptor"] = true,
            ["Triceratops"] = true,
            ["Stegosaurus"] = true,
            ["Pterodactyl"] = true,
            ["Turtle"] = true,
            ["Caterpillar"] = true,
            ["Petal Bee"] = true,
            ["Moth"] = true,
            ["Scarlet Macaw"] = true,
            ["Ostrich"] = true,
            ["Peacock"] = true,
            ["Capybara"] = true,
            ["Sand Snake"] = true,
            ["Meerkat"] = true
        },

        ["Mythical"] = {
            ["Brown Mouse"] = true,
            ["Giant Ant"] = true,
            ["Grey Mouse"] = true,
            ["Praying Mantis"] = true,
            ["Red Giant Ant"] = true,
            ["Snail"] = true,
            ["Squirrel"] = true,
            ["Bear Bee"] = true,
            ["Butterfly"] = true,
            ["Brontosaurus"] = true,
            ["Pack Bee"] = true,
            ["Mimic Octopus"] = true,
            ["Hyacinth Macaw"] = true,
            ["Axolotl"] = true,
            ["Hamster"] = true,
            ["Night Owl"] = true
        },

        ["Divine"] = {
            ["Red Fox"] = true,
            ["T-Rex"] = true,
            ["Dragonfly"] = true,
            ["Queen Bee"] = true,
            ["Disco Bee"] = true,
            ["Fennec Fox"] = true,
            ["Raccoon"] = true
        }
    },

    ["seeds"] = {
        "Carrot", "Strawberry", "Blueberry", "Orange Tulip", "Tomato", "Daffodil",
        "Watermelon", "Pumpkin", "Apple", "Bamboo", "Coconut", "Cactus",
        "Dragon Fruit", "Mango", "Grape", "Mushroom", "Pepper", "Cacao",
        "Beanstalk", "Ember Lily", "Sugar Apple", "Burning Bud",
        "Giant Pinecone", "Elder Strawberry"
    },
    ["eggs"] = {
        "Common Egg", "Common Summer Egg", "Rare Summer Egg", "Mythical Egg", "Paradise Egg", "Bug Egg"
    },
    ["mutations"] = {
        ["Rainbow"] = 50,
        ["Gold"] = 20,
        ["Shocked"] = 100,
        ["Frozen"] = 10,
        ["Wet"] = 2,
        ["Chilled"] = 2,
        ["Choc"] = 2,
        ["Moonlit"] = 2,
        ["Bloodlit"] = 4,
        ["Celestial"] = 120,
        ["Zombified"] = 25,
        ["Disco"] = 125,
        ["Plasma"] = 5,
        ["Pollinated"] = 3,
        ["Molten"] = 25,
        ["Meteoric"] = 125,
        ["Voidtouched"] = 135,
        ["Dawnbound"] = 150,
        ["Sundried"] = 85,
        ["Windstruck"] = 2,
        ["Twisted"] = 30,
        ["Honey Glazed"] = 5,
        ["Heavenly"] = 5,
        ["Verdant"] = 4,
        ["Paradisal"] = 100,
        ["Aurora"] = 90,
        ["Drenched"] = 5,
        ["Fried"] = 8,
        ["Amber"] = 10,
        ["Ancientamber"] = 50,
        ["Sandy"] = 3,
        ["Clay"] = 3,
        ["Ceramic"] = 30
    },

    ["gear"] = {
        "Watering Can", "Trading Ticket", "Trowel", "Recall Wrench", "Basic Sprinkler", "Advanced Sprinkler",
        "Medium Toy", "Medium Treat", "Godly Sprinkler", "Magnifying Glass", "Tanning Mirror",
        "Master Sprinkler", "Cleaning Spray", "Favorite Tool", "Harvest Tool",
        "FriendShip Pot", "Grandmaster Sprinkler", "Levelup Lollipop"
    },
    ["gear_recipes"] = {
        "Lighting Rod", "Tanning Mirror", "Reclaimer", "Tropical Mist Sprinkler", "Berry Blusher Sprinkler",
        "Spice Spritzer Sprinkler", "Sweet Soaker Sprinkler", "Flower Froster Sprinkler", "Stalk Sprout Sprinkler",
        "Mutation Spray Choc", "Mutation Spray Chilled", "Mutation Spray Shocked", "Mutation Spray Pollinated",
        "Anti Bee Egg", "Small Toy", "Small Treat", "Pack Bee"
    },
    ["seed_recipes"] = {
        "Crafters Seed Pack", "Manuka Flower", "Dandelion", "Lumira", "Honeysuckle",
        "Bee Balm", "Nectar Thorn", "Suncoil", "Peace Lily", "Aloe Vera",
        "Guanabana", "Amber Spine", "Grand Volcania", "Horsetail", "Lingonberry",
        "Twisted Tangle", "Veinpetal"
    },

    ["skyPresets"] = {
        Default = {"115721544632821", "72601404676117", "115721544632821", "115721544632821", "115721544632821", "112547577346413"},
        Vaporwave = {"1417494030", "1417494146", "1417494253", "1417494402", "1417494499", "1417494643"},
        Redshift = {"401664839", "401664862", "401664960", "401664881", "401664901", "401664936"},
        Desert = {"1013852", "1013853", "1013850", "1013851", "1013849", "1013854"},
        Minecraft = {"1876545003", "1876544331", "1876542941", "1876543392", "1876543764", "1876544642"},
        Blaze = {"150939022", "150939038", "150939047", "150939056", "150939063", "150939082"},
        ["Cloudy Sky"] = {"4495864450", "4495864887", "4495865458", "4495866035", "4495866584", "4495867486"},
        ["Pink sky"] = {"271042516", "271077243", "271042310", "271042467", "271042467", "271077958"},
        ["Space Wave"] = {"16262356578", "16262358026", "16262360469", "16262362003", "16262363873", "16262366016"},
        ["Space Wave2"] = {"1233158420", "1233158838", "1233157105", "1233157640", "1233157995", "1233159158"},
        ["Turquoise Wave"] = {"47974894", "47974690", "47974821", "47974776", "47974859", "47974909"},
        ["Dark Night"] = {"6285719338", "6285721078", "6285722964", "6285724682", "6285726335", "6285730635"},
        ["Bright Pink"] = {"271042516", "271077243", "271042556", "271042310", "271042467", "271077958"},
        ["White Galaxy"] = {"5540798456", "5540799894", "5540801779", "5540801192", "5540799108", "5540800635"},
        ["Blue Galaxy"] = {"14961495673", "14961494492", "14961492844", "14961491298", "14961490439", "14961489508"}
    }
}

return items
