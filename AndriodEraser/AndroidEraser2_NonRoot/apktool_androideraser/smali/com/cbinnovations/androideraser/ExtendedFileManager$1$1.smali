.class Lcom/cbinnovations/androideraser/ExtendedFileManager$1$1;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$methodListAdapter:Lcom/cbinnovations/androideraser/MethodListAdapter;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$1;Lcom/cbinnovations/androideraser/MethodListAdapter;)V
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

    .line 96
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$1;->val$methodListAdapter:Lcom/cbinnovations/androideraser/MethodListAdapter;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$1;->val$methodListAdapter:Lcom/cbinnovations/androideraser/MethodListAdapter;

    invoke-virtual {v0, p2}, Lcom/cbinnovations/androideraser/MethodListAdapter;->getItem(I)Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->getEraseMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$mshowSummary(Lcom/cbinnovations/androideraser/ExtendedFileManager;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    return-void
.end method
