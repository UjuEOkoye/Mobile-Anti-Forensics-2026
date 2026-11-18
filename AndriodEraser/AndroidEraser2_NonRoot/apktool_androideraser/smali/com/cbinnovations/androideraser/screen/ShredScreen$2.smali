.class Lcom/cbinnovations/androideraser/screen/ShredScreen$2;
.super Ljava/lang/Object;
.source "ShredScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/ShredScreen;->startProcess(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

.field final synthetic val$mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/ShredScreen;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->val$mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->-$$Nest$fgetmData(Lcom/cbinnovations/androideraser/screen/ShredScreen;)[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 110
    iget-object v3, v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->file:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->whatsapp:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->emptyFolder:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->download:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->apk:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->faceRecognize:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->appResidues:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->thumbnails:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v3, v4, :cond_0

    .line 113
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-class v1, [Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-static {p2, p1}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->-$$Nest$fputmData(Lcom/cbinnovations/androideraser/screen/ShredScreen;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V

    .line 117
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->-$$Nest$fgetmData(Lcom/cbinnovations/androideraser/screen/ShredScreen;)[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/cbinnovations/androideraser/screen/ShredScreen;->selectedFiles:J

    .line 119
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->val$mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->startProcess(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    return-void

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    const p2, 0x7f110115

    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 122
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    const p2, 0x7f08013b

    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object p2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p1, p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    return-void
.end method
