String createImageUrl(String? url) {
  if (url == null)
    return "https://cdn.shopify.com/s/files/1/0026/3913/4833/products/not-found_113b59f4-d182-4b43-8e51-85a114f62896_1024x1024.png";
  return "https://image.tmdb.org/t/p/w500/$url";
}
