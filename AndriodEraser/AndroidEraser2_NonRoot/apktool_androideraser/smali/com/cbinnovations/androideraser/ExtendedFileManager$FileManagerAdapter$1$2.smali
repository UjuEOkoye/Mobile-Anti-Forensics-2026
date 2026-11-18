.class Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1$2;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;

.field final synthetic val$file:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;Landroidx/documentfile/provider/DocumentFile;)V
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

    .line 655
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1$2;->val$file:Landroidx/documentfile/provider/DocumentFile;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1$2;->this$2:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 657
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1$2;->this$2:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-wide v1, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedFiles:J

    iget-object v3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1$2;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/Storage;->getFileSize(Landroidx/documentfile/provider/DocumentFile;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedFiles:J

    return-void
.end method
