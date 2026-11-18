.class synthetic Lcom/cbinnovations/androideraser/screen/MethodScreen$4;
.super Ljava/lang/Object;
.source "MethodScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/screen/MethodScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$PanelState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    invoke-static {}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->values()[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cbinnovations/androideraser/screen/MethodScreen$4;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    :try_start_0
    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cbinnovations/androideraser/screen/MethodScreen$4;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/cbinnovations/androideraser/screen/MethodScreen$4;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
