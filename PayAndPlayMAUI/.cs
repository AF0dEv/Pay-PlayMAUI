using SkiaSharp;
using SkiaSharp.Views.Maui;
using SkiaSharp.Views.Maui.Controls;
using System;

namespace PayAndPlayMAUI { 
	
	internal class ChartController : SKCanvasView
	{
		public event EventHandler<SKPaintSurfaceEventArgs> ChartPainted;

		public static readonly BindableProperty ChartProperty = BindableProperty.Create(nameof(Chart), typeof(Chart), typeof(ChartView), null, propertyChanged: OnChartChanged);

		public ChartController Chart
		{ 
			get { return (Chart)GetValue(ChartProperty); }
			set { SetValue(ChartProperty, value); }
		}

		private InvalidateWeakEventHandler<ChartController> handler;

		private ChartController 

        public ChartController()
		{
		}
	}
}

