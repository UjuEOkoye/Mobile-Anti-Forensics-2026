.class Lcom/cbinnovations/androideraser/ExtendedFileManager$9;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager;->onItemClick(Landroidx/documentfile/provider/DocumentFile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

.field final synthetic val$selected:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)V
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

    .line 372
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$9;->val$selected:Landroidx/documentfile/provider/DocumentFile;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$9;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 374
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$9;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$9;->val$selected:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$maskStoragePermission(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method
