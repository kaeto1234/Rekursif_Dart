class BinarySearch {
  int search(List<int> arr, int left, int right, int target) {
    if (left > right) {
      return -1;
    }

    int mid = (left + right) ~/ 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] > target) {
      return search(arr, left, mid - 1, target);
    } else {
      return search(arr, mid + 1, right, target);
    }
  }
}