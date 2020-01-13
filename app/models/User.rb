class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def recipes
        RecipeCard.all.select do |card_instance|
            card_instance.user == self
        end
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(name, ingredient)
        Allergy.new(name, self, ingredient)
    end

    def allergens
        allergy = Allergy.all.select do |allergy_instance|
            allergy_instance.user == self
        end
        allergy.map do |allergy_instance|
            allergy_instance.ingredient
        end
    end

    def top_three_recipes
        self.recipes.max_by(3) do |instance|
            instance.rating
        end
    end

    def most_recent_recipe
        date = self.recipes.sort_by do |instance|
            instance.date
        end
        date[-1]
    end

    def self.all
        @@all
    end

end