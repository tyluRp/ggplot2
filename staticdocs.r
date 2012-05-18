library(staticdocs)
list(
  index = list(
    sd_section("Geoms",
      "Geoms, short for geometric objects, describe the type of plot you will produce.",  
      c(
        "geom_abline", 
        "geom_area", 
        "geom_bar", 
        "geom_bin2d",
        "geom_blank", 
        "geom_boxplot", 
        "geom_contour", 
        "geom_crossbar",
        "geom_density", 
        "geom_density2d", 
        "geom_errorbar", 
        "geom_errorbarh",
        "geom_freqpoly", 
        "geom_hex", 
        "geom_histogram", 
        "geom_hline",
        "geom_jitter", 
        "geom_line", 
        "geom_linerange", 
        "geom_path", 
        "geom_point", 
        "geom_pointrange", 
        "geom_polygon", 
        "geom_quantile", 
        "geom_rect", 
        "geom_ribbon", 
        "geom_rug", 
        "geom_segment", 
        "geom_smooth", 
        "geom_step", 
        "geom_text", 
        "geom_tile", 
        "geom_vline"
      )
    ), 
    sd_section("Statistics",
      "It's often useful to transform your data before plotting, and that's what statistical transformations do.",
      c(
        "stat_abline",
        "stat_bin",
        "stat_bin2d",
        "stat_binhex",
        "stat_boxplot",
        "stat_contour",
        "stat_density",
        "stat_density2d",
        "stat_function",
        "stat_hline",
        "stat_identity",
        "stat_qq",
        "stat_quantile",
        "stat_smooth",
        "stat_spoke",
        "stat_sum",
        "stat_summary",
        "stat_unique",
        "stat_vline"
      )
    ),
    sd_section("Scales",
      "Scales control the mapping between data and aesthetics.",
      c(
        "scale_alpha",
        "scale_continuous",
        "scale_datetime",
        "scale_gradient",
        "scale_gradientn",
        "scale_hue",
        "scale_linetype",
        "scale_shape",
        "scale_brewer",
        "scale_date",
        "scale_discrete",
        "scale_gradient2",
        "scale_grey",
        "scale_identity",
        "scale_manual",
        "scale_size"      
      )
    ),
    sd_section("Coordinate systems",
      "Coordinate systems adjust the mapping from coordinates to the 2d plane of the computer screen.",
      c(
        "coord_cartesian",
        "coord_equal",
        "coord_flip",
        "coord_map",
        "coord_polar",
        "coord_trans"
      )
    ),

    sd_section("Faceting",
      "Facets display subsets of the dataset in different panels.",
      c(
        "facet_grid",
        "facet_wrap"
      )
    ),

    sd_section("Position adjustments",
      "Position adjustments can be used to fine tune positioning of objects to achieve effects like dodging, jittering and stacking.",
      c(
        "position_dodge",
        "position_fill",
        "position_identity",
        "position_stack",
        "position_jitter"
      )
    )
  ), 
  icons = list(  
    coord_polar = sd_icon({
      circleGrob(r = c(0.1, 0.25, 0.45),  gp = gpar(fill = NA))
    }),
    coord_transform = sd_icon({
      breaks <- cumsum(1 / 2^(1:5))
      gTree(children = gList(
        segmentsGrob(breaks, 0, breaks, 1),
        segmentsGrob(0, breaks, 1, breaks)
      ))
    }),
    geom_abline = sd_icon(linesGrob(c(0, 1), c(0.2, 0.8))),
    geom_bar = sd_icon({
      rectGrob(c(0.3, 0.7), c(0.4, 0.8), height = c(0.4, 0.8), width = 0.3, 
        vjust = 1, gp = gpar(fill = "grey20", col = NA))
      }),
    geom_histogram = sd_icon({
      y <- c(0.2, 0.3, 0.5, 0.6,0.2, 0.8, 0.5, 0.3)
      rectGrob(seq(0.1, 0.9, by = 0.1), y, height = y, width = 0.1, vjust = 1,
        gp = gpar(fill = "grey20", col = NA))
    }),
    geom_boxplot = sd_icon({
      gTree(children = gList(
        segmentsGrob(c(0.3, 0.7), c(0.1, 0.2), c(0.3, 0.7), c(0.7, 0.95)),
        rectGrob(c(0.3, 0.7), c(0.6, 0.8), width = 0.3, height = c(0.4, 0.4),
          vjust = 1),
        segmentsGrob(c(0.15, 0.55), c(0.5, 0.6), c(0.45, 0.85), c(0.5, 0.6))
      ))
    }),
    geom_crossbar = sd_icon({
      gTree(children = gList(
        rectGrob(c(0.3, 0.7), c(0.6, 0.8), width = 0.3, height = c(0.4, 0.4), vjust = 1),
        segmentsGrob(c(0.15, 0.55), c(0.5, 0.6), c(0.45, 0.85), c(0.5, 0.6))
      ))
    }),
    geom_dotplot = sd_icon({
      xpos <- c(1,1,2,3,3,3,4,4,5,5,5,5,6,7,7,7,8,8,9)/10
      ypos <- c(1,2,1,1,2,3,1,2,1,2,3,4,1,1,2,3,1,2,1)/10
      pointsGrob(x = xpos, y = ypos, pch = 19, size = unit(.1, "npc"),
                 gp = gpar(col = "black", cex = 0.5), default.units = "npc")
    }),
    geom_errorbar = sd_icon({
      gTree(children = gList(
        segmentsGrob(c(0.3, 0.7), c(0.3, 0.5), c(0.3, 0.7), c(0.7, 0.9)),
        segmentsGrob(c(0.15, 0.55), c(0.3, 0.5), c(0.45, 0.85), c(0.3, 0.5)),
        segmentsGrob(c(0.15, 0.55), c(0.7, 0.9), c(0.45, 0.85), c(0.7, 0.9))
      ))
    }),
    geom_errorbarh = sd_icon({
      gTree(children = gList(
        segmentsGrob(c(0.5, 0.3), c(0.70, 0.30), c(0.9, 0.7), c(0.70, 0.30)),
        segmentsGrob(c(0.5, 0.3), c(0.55, 0.15), c(0.5, 0.3), c(0.85, 0.45)),
        segmentsGrob(c(0.9, 0.7), c(0.55, 0.15), c(0.9, 0.7), c(0.85, 0.45))
      ))
    }),
    geom_freqpoly = sd_icon({
      y <- c(0.2, 0.3, 0.5, 0.6,0.2, 0.8, 0.5, 0.3)
      linesGrob(seq(0.1, 0.9, by = 0.1), y, gp = gpar(col = "grey20"))
    }),
    geom_hline = sd_icon({
      linesGrob(c(0, 1), c(0.5, 0.5))
    }),
    geom_linerange = sd_icon({
      segmentsGrob(c(0.3, 0.7), c(0.1, 0.2), c(0.3, 0.7), c(0.7, 0.95))
    }),
    geom_path = sd_icon({
      linesGrob(c(0.2, 0.4, 0.8, 0.6, 0.5), c(0.2, 0.7, 0.4, 0.1, 0.5))
    }),
    geom_contour = sd_icon({
      gTree(children = gList(
        polygonGrob(c(0.45,0.5,0.6, 0.5), c(0.5, 0.4, 0.55, 0.6)),
        polygonGrob(c(0.25,0.6,0.8, 0.5), c(0.5, 0.2, 0.75, 0.9), 
          gp = gpar(fill = NA))
      ))
    }),
    geom_density2d = sd_icon(inherit = "geom_contour"),
    geom_line = sd_icon({
      pos <- seq(0, 1, length = 5)
      linesGrob(pos, c(0.2, 0.7, 0.4, 0.8, 0.3))
    }),
    geom_step = sd_icon({
      n <- 15
      xs <- rep(0:n, each = 2)[-2*(n + 1)] / 15
      ys <- c(0, rep(1:n, each = 2)) / 15
      linesGrob(xs, ys, gp = gpar(col = "grey20"))
    }),
    geom_point = sd_icon({
      pos <- seq(0.1, 0.9, length = 6)
      pointsGrob(x = pos, y = pos, pch = 19,
        gp = gpar(col = "black", cex = 0.5), default.units = "npc")
    }),
    geom_jitter = sd_icon({
      pos <- seq(0.1, 0.9, length = 6)
      pointsGrob(x = pos, y = jitter(pos, 3), pch = 19,
        gp = gpar(col = "black", cex = 0.5), default.units = "npc")
    }),
    geom_pointrange = sd_icon({
      gTree(children = gList(
        segmentsGrob(c(0.3, 0.7), c(0.1, 0.2), c(0.3, 0.7), c(0.7, 0.95)),
        pointsGrob(c(0.3, 0.7), c(0.4, 0.6), pch = 19,
          gp = gpar(col = "black", cex = 0.5), default.units = "npc")
      ))
    }),
    geom_polygon = sd_icon({
      polygonGrob(c(0.1, 0.4, 0.7, 0.9, 0.6, 0.3),
      c(0.5, 0.8, 0.9, 0.4, 0.2, 0.3), gp = gpar(fill = "grey20", col = NA))
    }),
    geom_quantile = sd_icon({
      gTree(children = gList(
        linesGrob(c(0, 0.3, 0.5, 0.8, 1), c(0.8, 0.65, 0.6, 0.6, 0.8)),
        linesGrob(c(0, 0.3, 0.5, 0.8, 1), c(0.55, 0.45, 0.5, 0.45, 0.55)),
        linesGrob(c(0, 0.3, 0.5, 0.8, 1), c(0.3, 0.25, 0.4, 0.3, 0.2))
      ))
    }),
    geom_raster = sd_icon({
      rectGrob(c(0.25, 0.25, 0.75, 0.75), c(0.25, 0.75, 0.75, 0.25),
        width = 0.5, height = c(0.67, 0.5, 0.67, 0.5), 
        gp = gpar(col = "grey20", fill = c('#804070', '#668040')))
    }),
    geom_rect = sd_icon({
      rectGrob(c(0.3, 0.7), c(0.4, 0.8), height = c(0.4, 0.8), width = 0.3,
        vjust = 1, gp = gpar(fill = "grey20", col = NA))
    }),
    geom_ribbon = sd_icon({
      polygonGrob(c(0, 0.3, 0.5, 0.8, 1, 1, 0.8, 0.5, 0.3, 0),
        c(0.5, 0.3, 0.4, 0.2, 0.3, 0.7, 0.5, 0.6, 0.5, 0.7),
        gp = gpar(fill = "grey20", col = NA))
    }),
    geom_area = sd_icon({
      polygonGrob(c(0, 0,0.3, 0.5, 0.8, 1, 1),
        c(0, 1,0.5, 0.6, 0.3, 0.8, 0),
        gp = gpar(fill = "grey20", col = NA))
    }),
    geom_density = sd_icon({
      x <- seq(0, 1, length = 80)
      y <- dnorm(x, mean = 0.5, sd = 0.15)
      linesGrob(x, 0.05 + y / max(y) * 0.9, default = "npc")
    }),
    geom_segment = sd_icon({
      segmentsGrob(c(0.1, 0.3, 0.5, 0.7), c(0.3, 0.5, 0.1, 0.9),
        c(0.2, 0.5, 0.7, 0.9), c(0.8, 0.7, 0.4, 0.3))
    }),
    geom_smooth = sd_icon({
      gTree(children = gList(
        polygonGrob(c(0, 0.3, 0.5, 0.8, 1, 1, 0.8, 0.5, 0.3, 0),
          c(0.5, 0.3, 0.4, 0.2, 0.3, 0.7, 0.5, 0.6, 0.5, 0.7),
          gp = gpar(fill = "grey60", col = NA)),
        linesGrob(c(0, 0.3, 0.5, 0.8, 1), c(0.6, 0.4, 0.5, 0.4, 0.6))
      ))
    }),
    geom_text = sd_icon({
      textGrob("text", rot = 45, gp = gpar(cex = 1.2))
    }),
    geom_tile = sd_icon({
      rectGrob(c(0.25, 0.25, 0.75, 0.75), c(0.25, 0.75, 0.75, 0.25),
        width = 0.5, height = c(0.67, 0.5, 0.67, 0.5),
        gp = gpar(col = "grey20", fill = c('#804070', '#668040')))
    }),
    geom_violin = sd_icon({
      y <- seq(-.3, .3, length = 40)
      x1 <- dnorm(y, mean = -.15, sd = 0.05) +
       1.5 * dnorm(y, mean = 0.1, sd = 0.1)
      x2 <- dnorm(y, mean = -.1, sd = 0.1) + dnorm(y, mean = 0.1, sd = 0.1)

      y <- c(y, rev(y))
      x1 <- c(x1, -rev(x1)) / max(8 * x1)
      x2 <- c(x2, -rev(x2)) / max(8 * x2)
      gp <- gpar(fill = "black")
      gTree(children = gList(
        polygonGrob(x1 + .30, y + .35, default = "npc", gp = gp),
        polygonGrob(x2 + .70, y + .55, default = "npc", gp = gp))
      )
    }),
    geom_vline = sd_icon({
      linesGrob(c(0.5, 0.5), c(0, 1))
    }),
    position_dodge = sd_icon({
      y <- c(0.5, 0.3)
      rectGrob(c(0.25, 0.75), y, width = 0.4, height = y,
        gp = gpar(col = "grey60", fill = c('#804070', '#668040')), vjust = 1)
    }),
    position_fill = sd_icon({
      y <- c(0.5, 0.8)
      rectGrob(0.5, c(0.625, 1), width = 0.4, height = c(0.625, 0.375),
        gp = gpar(col = "grey60", fill = c('#804070', '#668040')), vjust = 1)
    }),
    position_identity = sd_icon({
      rectGrob(0.5, c(0.5, 0.3), width = 0.4, height = c(0.5, 0.3),
        gp = gpar(col = "grey60", fill = c('#804070', '#668040')), vjust = 1) 
    }),
    position_jitter = sd_icon(inherit = "geom_jitter" ),
    position_stack = sd_icon({
      y <- c(0.5, 0.8)
      rectGrob(0.5, c(0.5, 0.8), width = 0.4, height = c(0.5, 0.3),
        gp = gpar(col = "grey60", fill = c('#804070', '#668040')), vjust = 1)
    }),
    stat_bin = sd_icon(inherit = "geom_histogram" ),
    stat_bindot = sd_icon(inherit = "geom_dotplot" ),
    stat_boxplot = sd_icon(inherit = "geom_boxplot" ),
    stat_contour = sd_icon(inherit = "geom_contour" ),
    stat_density2d = sd_icon(inherit = "geom_density2d" ),
    stat_density = sd_icon(inherit = "geom_density" ),
    stat_identity = sd_icon({
      textGrob('f(x) = x', gp = gpar(cex = 1.2))
    }),
    stat_quantile = sd_icon(inherit = "geom_quantile" ),
    stat_smooth = sd_icon(inherit = "geom_smooth" ),
    stat_sum = sd_icon({
      textGrob(expression(Sigma), gp = gpar(cex = 4))
    }),
    # The line stats will be removed in the future
    stat_abline = sd_icon(inherit = "geom_abline" ),
    stat_vline = sd_icon(inherit = "geom_vline" ),
    stat_hline = sd_icon(inherit = "geom_hline" ),
    stat_ydensity = sd_icon(inherit = "geom_violin" )
))