.class Lcom/cbinnovations/androideraser/ExtendedFileManager$7;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager;->getStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Ljava/lang/String;)V
    .locals 5

    .line 334
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 335
    invoke-virtual {v2, v0, v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildData(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    .line 336
    iget-object v3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetrootStorages(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->hasGranted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetexplorerStorages(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v2, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const p2, 0x7f08013f

    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    new-instance p2, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetrootStorages(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ExtendedFileManager-IA;)V

    iput-object p2, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    .line 345
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetrecycleView(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onSearchStarted()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetrootStorages(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 327
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$memptyDir(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    return-void
.end method

.method public onSearchStopped()V
    .locals 0

    return-void
.end method
