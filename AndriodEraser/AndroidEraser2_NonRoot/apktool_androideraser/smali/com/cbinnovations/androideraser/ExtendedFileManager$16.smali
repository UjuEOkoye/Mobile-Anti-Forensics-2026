.class Lcom/cbinnovations/androideraser/ExtendedFileManager$16;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager;->showSummary(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

.field final synthetic val$method:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
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

    .line 529
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$16;->val$method:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$16;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 531
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$16;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v0, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->getCurrentRoot()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$mgetGranted(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 532
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$16;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$16;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$16;->val$method:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->startProcess(Landroidx/documentfile/provider/DocumentFile;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    :cond_0
    return-void
.end method
