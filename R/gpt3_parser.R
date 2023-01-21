# A function to do GPT-3 api request to parse a piece text into a structured table format of predefined question
# you want to pose about the supplied text.
#
#' @param input a string representing text to have parsed in GPT-3
#' @param table_format formatting of the table to be sent back. Example format "| first subject | second subject | ... |"
#' @param max_tokens an integer
#'
#' @return list in case of succesfull call, or string in case of error code


gpt3_table_parser_davinci <- function(input, table_format, max_tokens) {

  openai_api_key <- Sys.getenv("OPENAI_API_KEY")

  response <- httr::POST(
    "https://api.openai.com/v1/completions",
    add_headers(Authorization = paste0("Bearer ", openai_api_key)),
    encode = "json",
    body = list(
      model = "text-davinci-003",
      prompt = str_c(
        "A table summarizing this text:",
        input,
        table_format,
        sep = " "
      ),
      temperature = 0,
      max_tokens = max_tokens,
      top_p = 1,
      frequency_penalty = 0,
      presence_penalty = 0
    )
  )

  if (status_code(response) == 200) {

    list_response <- content(response)

    return(list_response$choices[[1]]$text)


  } else {

    return(paste("Error:", status_code(response)))

  }

}
