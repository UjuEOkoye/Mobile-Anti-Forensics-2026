.class Lcom/cbinnovations/androideraser/screen/MethodScreen$1;
.super Ljava/lang/Object;
.source "MethodScreen.java"

# interfaces
.implements Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/MethodScreen;->initOnCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

.field private wasEXPANDED:Z


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/MethodScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->wasEXPANDED:Z

    return-void
.end method


# virtual methods
.method public onPanelSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onPanelStateChanged(Landroid/view/View;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V
    .locals 2

    .line 139
    sget-object p1, Lcom/cbinnovations/androideraser/screen/MethodScreen$4;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    invoke-virtual {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-static {p1, p3}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->-$$Nest$msetToolbar(Lcom/cbinnovations/androideraser/screen/MethodScreen;Z)V

    .line 156
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->wasEXPANDED:Z

    return-void

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-static {p1, p3}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->-$$Nest$msetToolbar(Lcom/cbinnovations/androideraser/screen/MethodScreen;Z)V

    .line 146
    sget-object p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne p2, p1, :cond_3

    .line 147
    iget-boolean p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->wasEXPANDED:Z

    if-eqz p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->closePanel()V

    return-void

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->openPanel()V

    :cond_3
    :goto_0
    return-void

    .line 141
    :cond_4
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->-$$Nest$msetToolbar(Lcom/cbinnovations/androideraser/screen/MethodScreen;Z)V

    .line 142
    iput-boolean p3, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;->wasEXPANDED:Z

    return-void
.end method
