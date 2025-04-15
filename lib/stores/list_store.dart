import 'package:list_app/models/list_item.dart';
import 'package:mobx/mobx.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {
  @observable
  ObservableList<ListItem> namesList = ObservableList<ListItem>();

  @observable
  bool isEditing = false;

  @action
  void addItem(ListItem item) {
    namesList.add(item);
  }

  @action
  void updateItemAtIndex(int index, ListItem item) {
    namesList[index] = item;
  }

  @action
  ListItem getItemByIndex(int index) {
    return namesList[index];
  }

  @action
  void deleteItemByIndex(int index) {
    namesList.removeAt(index);
  }

  @action
  void toggleIsEditing() {
    if (isEditing) {
      isEditing = false;
    } else {
      isEditing = true;
    }
  }
}
