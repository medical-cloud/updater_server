Feature: Testing the update scenario of beta releases

  Scenario: Updating an outdated ownCloud 8.2.5 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.4 will receive the latest compatible release
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel with PHP 5.4
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel without sending PHP version
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an outdated Nextcloud 10.0.1 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.1.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel without an mtime
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an outdated Nextcloud 12.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.15"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.12.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    GRVpINAV11LUd+UxjnQtb2gbFHaxNrh9WzzQgPpjaKJ6J28PRQ9sq8J1GlfEN2K7
    RnD/6pFkDRTlBOU56g4XC3GgDpY6F88OVQ0z9D1/nudSZV+cSu6xRuC6q7Z9sStG
    oyDn+o4Z8c+i2yR6zcoVD5itXiU1w41fMT/dlzCtIDmo953+K9fNlTPlU9h9H3MI
    HVECrm+3NmISmI8+5hl4Ju5p8tudxVhGF2aHR0ilG0ff+wjdz5CtsiZXoP+BUNn+
    VFRfhy9vBf+VD6khhFkDXSymw0X6xNN3lMqQIJmJPsPONDXtk2diY6h204uEUofP
    yiBfUT4yVTwIOt+tnqZzzw==
    """

  Scenario: Updating an up-to-date Nextcloud 12.0.7 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.7.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.12.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    GRVpINAV11LUd+UxjnQtb2gbFHaxNrh9WzzQgPpjaKJ6J28PRQ9sq8J1GlfEN2K7
    RnD/6pFkDRTlBOU56g4XC3GgDpY6F88OVQ0z9D1/nudSZV+cSu6xRuC6q7Z9sStG
    oyDn+o4Z8c+i2yR6zcoVD5itXiU1w41fMT/dlzCtIDmo953+K9fNlTPlU9h9H3MI
    HVECrm+3NmISmI8+5hl4Ju5p8tudxVhGF2aHR0ilG0ff+wjdz5CtsiZXoP+BUNn+
    VFRfhy9vBf+VD6khhFkDXSymw0X6xNN3lMqQIJmJPsPONDXtk2diY6h204uEUofP
    yiBfUT4yVTwIOt+tnqZzzw==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.12.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    GRVpINAV11LUd+UxjnQtb2gbFHaxNrh9WzzQgPpjaKJ6J28PRQ9sq8J1GlfEN2K7
    RnD/6pFkDRTlBOU56g4XC3GgDpY6F88OVQ0z9D1/nudSZV+cSu6xRuC6q7Z9sStG
    oyDn+o4Z8c+i2yR6zcoVD5itXiU1w41fMT/dlzCtIDmo953+K9fNlTPlU9h9H3MI
    HVECrm+3NmISmI8+5hl4Ju5p8tudxVhGF2aHR0ilG0ff+wjdz5CtsiZXoP+BUNn+
    VFRfhy9vBf+VD6khhFkDXSymw0X6xNN3lMqQIJmJPsPONDXtk2diY6h204uEUofP
    yiBfUT4yVTwIOt+tnqZzzw==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.12.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    GRVpINAV11LUd+UxjnQtb2gbFHaxNrh9WzzQgPpjaKJ6J28PRQ9sq8J1GlfEN2K7
    RnD/6pFkDRTlBOU56g4XC3GgDpY6F88OVQ0z9D1/nudSZV+cSu6xRuC6q7Z9sStG
    oyDn+o4Z8c+i2yR6zcoVD5itXiU1w41fMT/dlzCtIDmo953+K9fNlTPlU9h9H3MI
    HVECrm+3NmISmI8+5hl4Ju5p8tudxVhGF2aHR0ilG0ff+wjdz5CtsiZXoP+BUNn+
    VFRfhy9vBf+VD6khhFkDXSymw0X6xNN3lMqQIJmJPsPONDXtk2diY6h204uEUofP
    yiBfUT4yVTwIOt+tnqZzzw==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 7.0
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.9.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-14.0.9RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    hchKS4gR7DLMus3BVjfsjiJj0ZfvW5Gl7kVRTmspahwPWw1OH2hgXfQ5qLhUaZEk
    zyNrzQ7XbTLyTs3ZtuWpg/+cCbhmgM3D9EyAp2Jdj5csNcnHT89POPSMYjxBOdQB
    IC++jgplTBJihS/cXBFQOlEag0KKsR6BOlM/gzcKlGrtMLSF80JegCw3juwIukY6
    v/NU2Z5aUdeR0Q8BAgRVqdn/uSpPd9bO9txTLXoV2ZHB87a90R6uuKhLwyq6xFTf
    7IKJYf8jglCI5Fh5aqUETLYhWzIRdKPh7s0O99cN0xI4tEuBG/cq142neYvydlVx
    Ao/Exj+ziDMu8CuXNPgUqA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 7.0
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.9.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-14.0.9RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    hchKS4gR7DLMus3BVjfsjiJj0ZfvW5Gl7kVRTmspahwPWw1OH2hgXfQ5qLhUaZEk
    zyNrzQ7XbTLyTs3ZtuWpg/+cCbhmgM3D9EyAp2Jdj5csNcnHT89POPSMYjxBOdQB
    IC++jgplTBJihS/cXBFQOlEag0KKsR6BOlM/gzcKlGrtMLSF80JegCw3juwIukY6
    v/NU2Z5aUdeR0Q8BAgRVqdn/uSpPd9bO9txTLXoV2ZHB87a90R6uuKhLwyq6xFTf
    7IKJYf8jglCI5Fh5aqUETLYhWzIRdKPh7s0O99cN0xI4tEuBG/cq142neYvydlVx
    Ao/Exj+ziDMu8CuXNPgUqA==
    """

  Scenario: Updating an up-to-date Nextcloud 14.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "14.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "9"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.6.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-15.0.6RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    LaI/KqBZet1FuiCebvVzLsdwmCUA+8IPUhCdK8MY8QGsW6E9He8Ue5Qkn51NI4j2
    52DlRQaqY75lPfHiKVHskuYcHMrWV1iVnydXlKCi4Q+p/4QfzuDPgUgJj042LQLg
    iZOnxsuX5KVUF2R6bb1/Bcp81LTo3et2KSxPWJh5TuWdpoP95B3knlrfBlpoaWr5
    sCxBsAAcgF9rMzhg0xvDUibAXVoShZoUr4ixGGfRPWFteNfq/8RrpFB99KUZsE6z
    1ijXiLyyOzXH1DQ7wgMPl0L9M7JrpERTnWBunYSzoBaphtBGvIerNLfNpbDl4ghN
    fp03F/8JMuj5LU5UdZm53w==
    """

  Scenario: Updating an up-to-date Nextcloud 14.0.3 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "14.0.3.0"
    And The received PHP version is "7.0.0"
    And the installation mtime is "9"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.6.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-15.0.6RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    LaI/KqBZet1FuiCebvVzLsdwmCUA+8IPUhCdK8MY8QGsW6E9He8Ue5Qkn51NI4j2
    52DlRQaqY75lPfHiKVHskuYcHMrWV1iVnydXlKCi4Q+p/4QfzuDPgUgJj042LQLg
    iZOnxsuX5KVUF2R6bb1/Bcp81LTo3et2KSxPWJh5TuWdpoP95B3knlrfBlpoaWr5
    sCxBsAAcgF9rMzhg0xvDUibAXVoShZoUr4ixGGfRPWFteNfq/8RrpFB99KUZsE6z
    1ijXiLyyOzXH1DQ7wgMPl0L9M7JrpERTnWBunYSzoBaphtBGvIerNLfNpbDl4ghN
    fp03F/8JMuj5LU5UdZm53w==
    """

  Scenario: Updating an outdated Nextcloud 15.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "15.0.0.0"
    And The received PHP version is "7.1.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.6.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-15.0.6RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    LaI/KqBZet1FuiCebvVzLsdwmCUA+8IPUhCdK8MY8QGsW6E9He8Ue5Qkn51NI4j2
    52DlRQaqY75lPfHiKVHskuYcHMrWV1iVnydXlKCi4Q+p/4QfzuDPgUgJj042LQLg
    iZOnxsuX5KVUF2R6bb1/Bcp81LTo3et2KSxPWJh5TuWdpoP95B3knlrfBlpoaWr5
    sCxBsAAcgF9rMzhg0xvDUibAXVoShZoUr4ixGGfRPWFteNfq/8RrpFB99KUZsE6z
    1ijXiLyyOzXH1DQ7wgMPl0L9M7JrpERTnWBunYSzoBaphtBGvIerNLfNpbDl4ghN
    fp03F/8JMuj5LU5UdZm53w==
    """

  Scenario: Updating an outdated Nextcloud 15.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "15.0.0.0"
    And The received PHP version is "7.1.0"
    And the installation mtime is "9"
    When The request is sent
    Then The response is non-empty
    And Update to version "16.0.0.4" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-16.0.0beta2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    wMNjG46phAyBDDtlbWKIcx43T1tzdgzQUwDWElTY+2TUWTv9WlrwgdPYqtNQ215o
    AGgeOD7zLrVEfDz7Uzwr+i9qvfFOKHvtleUk98g1FpAlNRrQKGJ+Q49Ciw1oirmt
    3JU+6Eug0nRBcLcZ7FzDS9l5pGRQp3KDE2QxBFkrrBHq7vSRqZABg3XGMqkJCEks
    KCV579+l/2i73dSs1Jh1JL2o9qUpuF7qywuckdfiFCWEc1ejLb9hQBtcpFT8IEQ5
    QbhvGMDXRvqKRunhWoFz7UHKCNYz1QXXLhfrMFmmGw7QLd8VKKy1ja0F5NEtE/XO
    muyeVj1OQBO1rJakZyva4A==
    """

  Scenario: Updating an outdated Nextcloud 16.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "16.0.0.0"
    And The received PHP version is "7.1.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "16.0.0.4" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-16.0.0beta2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    wMNjG46phAyBDDtlbWKIcx43T1tzdgzQUwDWElTY+2TUWTv9WlrwgdPYqtNQ215o
    AGgeOD7zLrVEfDz7Uzwr+i9qvfFOKHvtleUk98g1FpAlNRrQKGJ+Q49Ciw1oirmt
    3JU+6Eug0nRBcLcZ7FzDS9l5pGRQp3KDE2QxBFkrrBHq7vSRqZABg3XGMqkJCEks
    KCV579+l/2i73dSs1Jh1JL2o9qUpuF7qywuckdfiFCWEc1ejLb9hQBtcpFT8IEQ5
    QbhvGMDXRvqKRunhWoFz7UHKCNYz1QXXLhfrMFmmGw7QLd8VKKy1ja0F5NEtE/XO
    muyeVj1OQBO1rJakZyva4A==
    """
