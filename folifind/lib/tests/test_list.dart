import 'dart:math';

/// 
/// This class produces a simple list of plants for layout testing
/// purposes.
/// 
/// @author: Giovan Cervantes
/// @version: 1.0
class TestList {

  /* 
    Test data is being pulled from a String, rather than a .txt file
    due to file access being different when using a mobile application.
  */
  static const String data = "Rose, Tulip, Sunflower, Daisy, Orchid, Lily, Daffodil, Marigold, Jasmine, Peony, Hydrangea, Iris, Carnation, Lavender, Pansy, Chrysanthemum, Geranium, Poppy, Lilac, Zinnia, Dahlia, Violet, Begonia, Amaryllis, Azalea, Camellia, Crocus, Fuchsia, Honeysuckle, Magnolia, Morning Glory, Petunia, Primrose, Snapdragon, Wisteria, Yarrow, Bleeding Heart, Cactus, Forget-me-not, Gladiolus, Hibiscus, Hollyhock, Jonquil, Maple, Nasturtium, Oleander, Oxalis, Peacock Flower, Queen Annes Lace, Ranunculus, Snowdrop, Thistle, Verbena, Water Lily, Xeranthemum, Yucca, Zantedeschia, Alstroemeria, Babys Breath, Bellflower, Celosia, Dandelion, Echinacea, Foxglove, Gazania, Heather, Impatiens, Kangaroo Paw, Lobelia, Mimosa, Nigella, Oregano, Portulaca, Quince, Rosemary, Salvia, Thyme, Ulex, Valerian, Wallflower, Xerophyte, Yam, Zephyranthes, Amaranth, Balsam, Cotoneaster, Dianthus, Euonymus, Freesia, Gaura, Hosta, Ixia, Jacobs Ladder, Knautia, Lantana, Monkshood, Nemesia, Osteospermum, Penstemon, Quisqualis, Rudbeckia, Sedum, Trillium, Uvularia, Veronica, Waldsteinia, Xanthoceras, Yucca, Zauschneria";
  static const int maxPlants = 21;

  static List<String> plantList = data.split(", ");

  /// Generic constructor
  TestList();

  List<String> randomPlants() {
    List<String> randomPlantList = [];
    Random randNum = Random();
    for(int i = 0; i < randNum.nextInt(maxPlants); i++) {
      randomPlantList.add(plantList[randNum.nextInt(plantList.length)]);
    }

    return randomPlantList;
  }
}
