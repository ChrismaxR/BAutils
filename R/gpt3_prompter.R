# A function to do GPT-3 api request to parse a piece text into a structured table format of predefined question
# you want to pose about the supplied text.
#
#' @param input a string representing text to have parsed in GPT-3
#' @param preamble what to place in front of the input, as part of the prompt
#' @param epilogue what to place behind the input, as part of the prompt
#' @param max_tokens an integer
#'
#' @return list in case of succesfull call, or string in case of error code


gpt3_prompter <- function(input, preamble, epilogue, max_tokens) {

  openai_api_key <- Sys.getenv("OPENAI_API_KEY")

  response <- httr::POST(
    "https://api.openai.com/v1/completions",
    httr::add_headers(Authorization = paste0("Bearer ", openai_api_key)),
    encode = "json",
    body = list(
      model = "text-davinci-003",
      prompt = stringr::str_c(
        preamble,
        input,
        epilogue,
        sep = " "
      ),
    temperature = 0,
    max_tokens = max_tokens,
    top_p = 1,
    frequency_penalty = 0,
    presence_penalty = 0
    )
  )

  if (httr::status_code(response) == 200) {

    list_response <- httr::content(response)

    return(list_response$choices[[1]]$text)


  } else {

    return(paste("Error:", httr::status_code(response)))

  }

}
