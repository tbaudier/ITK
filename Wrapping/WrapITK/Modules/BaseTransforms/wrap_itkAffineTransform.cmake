WRAP_CLASS("itk::AffineTransform" POINTER)
  foreach(d ${WRAP_ITK_DIMS})
    WRAP_TEMPLATE("${ITKM_D}${d}" "${ITKT_D},${d}")
  endforeach(d)
END_WRAP_CLASS()
