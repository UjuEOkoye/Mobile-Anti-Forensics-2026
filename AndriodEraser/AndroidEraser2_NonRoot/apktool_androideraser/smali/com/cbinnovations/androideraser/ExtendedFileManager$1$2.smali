.class Lcom/cbinnovations/androideraser/ExtendedFileManager$1$2;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$1;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-wide v1, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedFiles:J

    iget-object v3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$1;

    iget-object v3, v3, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v3, v3, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->-$$Nest$fgetobjects(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getParentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/Storage;->getFileSize(Landroidx/documentfile/provider/DocumentFile;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedFiles:J

    return-void
.end method
