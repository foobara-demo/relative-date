# DetermineDateRelativeToToday

This is just a demo repo to show using LlmBackedCommand using Ollama to solve a real problem.

## Installation

This isn't a gem or anything. You can clone this with:

```
git clone git@github.com:foobara-demo/relative-date
cd relative-date
```

## Usage

Check out the example scripts in bin/ and you can run them like so:

```
$ determine_date_test.rb
It is a Thursday
2025-8-21
$ determine-relative-date --phrase 'the thursday after next'
2025-08-21
$ determine-relative-date --phrase yesterday
2025-08-10
$ determine-relative-date --phrase yesterday --today 2025-01-01
2024-12-31
```

You might need to prefix the above calls with `bin/` depending on how your local environment is set up.

## Contributing

Bug reports and pull requests are welcome on GitHub
at https://github.com/foobara-demo/relative-date

## License

This project is licensed under the MPL-2.0 license. Please see LICENSE.txt for more info.
