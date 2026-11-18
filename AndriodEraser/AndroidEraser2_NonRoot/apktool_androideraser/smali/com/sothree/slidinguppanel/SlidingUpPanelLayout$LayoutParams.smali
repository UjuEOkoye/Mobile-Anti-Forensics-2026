.class public Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010181

    .line 1447
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->ATTRS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 1454
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 1451
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1458
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1451
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 1462
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1463
    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1479
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 1451
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1481
    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1483
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1484
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1467
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 1451
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1471
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 1451
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;)V
    .locals 0

    .line 1475
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 1451
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    return-void
.end method
