{
  services.redshift = {
    enable = true;

    temperature = {
      day = 5700;
      night = 3500;
    };

    latitude = "56.947389";
    longitude = "24.122105";

    settings.redshift = {
      brightness-day = "1";
      brightness-night = "0.7";
    };
  };
}
