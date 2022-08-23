inherited mapas_FRM: Tmapas_FRM
  FormStyle = fsMDIChild
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxMapControl1: TdxMapControl
    Left = 0
    Top = 0
    Width = 1326
    Height = 823
    Align = alClient
    NavigationPanel.Style.CoordinateFont.Charset = DEFAULT_CHARSET
    NavigationPanel.Style.CoordinateFont.Color = clWindowText
    NavigationPanel.Style.CoordinateFont.Height = -21
    NavigationPanel.Style.CoordinateFont.Name = 'Tahoma'
    NavigationPanel.Style.CoordinateFont.Style = []
    NavigationPanel.Style.ScaleFont.Charset = DEFAULT_CHARSET
    NavigationPanel.Style.ScaleFont.Color = clWindowText
    NavigationPanel.Style.ScaleFont.Height = -16
    NavigationPanel.Style.ScaleFont.Name = 'Tahoma'
    NavigationPanel.Style.ScaleFont.Style = []
    TabOrder = 0
    ExplicitLeft = 472
    ExplicitTop = 328
    ExplicitWidth = 400
    ExplicitHeight = 200
    object dxMapControl1ImageTileLayer1: TdxMapImageTileLayer
      ProviderClassName = 'TdxMapControlOpenStreetMapImageryDataProvider'
      Provider.Subdomains.Strings = (
        'a'
        'b'
        'c')
      Provider.UrlTemplate = 'http://[subdomain].tile.openstreetmap.org/[z]/[x]/[y].png'
    end
    object dxMapControl1ItemLayer1: TdxMapItemLayer
      ProjectionClassName = 'TdxMapControlSphericalMercatorProjection'
      object dxMapControl1ItemLayer1CustomElement1: TdxMapCustomElement
        Location.Longitude = -45.511700000000000000
        Location.Latitude = -21.371200000000000000
        Text = 'Tr'#234's Pontas'
      end
      object dxMapControl1ItemLayer1CustomElement2: TdxMapCustomElement
        Location.Longitude = -45.430800000000000000
        Location.Latitude = -21.546400000000000000
        Text = 'Varginha'
      end
      object dxMapControl1ItemLayer1CustomElement3: TdxMapCustomElement
        Location.Longitude = -45.574600000000000000
        Location.Latitude = -21.094100000000000000
        Text = 'Boa Esperan'#231'a'
      end
      object dxMapControl1ItemLayer1CustomElement4: TdxMapCustomElement
        Location.Longitude = -45.509300000000000000
        Location.Latitude = -21.248600000000000000
        Text = 'Santana da Vargem'
      end
      object dxMapControl1ItemLayer1CustomElement5: TdxMapCustomElement
        Location.Longitude = -45.251500000000000000
        Location.Latitude = -21.692600000000000000
        Text = 'Tr'#234's Cora'#231#245'es'
      end
      object dxMapControl1ItemLayer1CustomElement6: TdxMapCustomElement
        Location.Longitude = -46.638800000000000000
        Location.Latitude = -23.548900000000000000
        Text = 'S'#227'o Paulo'
      end
      object dxMapControl1ItemLayer1CustomElement7: TdxMapCustomElement
        Location.Longitude = -43.954200000000000000
        Location.Latitude = -19.815700000000000000
        Text = 'Belo Horizonte'
      end
      object dxMapControl1ItemLayer1CustomElement8: TdxMapCustomElement
        Location.Longitude = -43.209600000000000000
        Location.Latitude = -22.903500000000000000
        Text = 'Rio de Janeiro'
      end
      object dxMapControl1ItemLayer1CustomElement9: TdxMapCustomElement
        Location.Longitude = -47.929200000000000000
        Location.Latitude = -15.780100000000000000
        Text = 'Brasilia'
      end
    end
  end
end
