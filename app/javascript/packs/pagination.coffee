$ ->
  if $(".pagination").lenght && $("#posts").lenght
    $(window).scrol ->
      url = $(".pagination .next a").attr("href")
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $(".pagination").text("Завантаження статей...")
        $.getScript(url)
    $(window).scrol()
