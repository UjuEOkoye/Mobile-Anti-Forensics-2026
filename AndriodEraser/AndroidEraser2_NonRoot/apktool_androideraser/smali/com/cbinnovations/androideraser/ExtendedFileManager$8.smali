.class Lcom/cbinnovations/androideraser/ExtendedFileManager$8;
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

    .line 377
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$8;->val$selected:Landroidx/documentfile/provider/DocumentFile;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$8;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 379
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$8;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$8;->val$selected:Landroidx/documentfile/provider/DocumentFile;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$monItemClick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;Z)V

    return-void
.end method
