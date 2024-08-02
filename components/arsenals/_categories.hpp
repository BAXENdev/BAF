
class Root {
    file = "components\arsenals";
    class addArsenal {};
    class addItemsToArsenal {};
    class getItemsFromLoadout {};
    class initArsenals {};
    class postinit { postInit=1; };
    class preinit { preInit=1; };
    class registerArsenalItems {};
    class registerArsenalObject {};
    class removeArsenal {};
};

class Zen {
    file = "components\arsenals\zen";
    class dialogAddArsenalAction {};
    class zenAddArsenalAction { preInit=1; };
};
