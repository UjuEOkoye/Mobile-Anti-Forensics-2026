.class Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->onBindViewHolder(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

.field final synthetic val$file:Landroidx/documentfile/provider/DocumentFile;

.field final synthetic val$holder:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;Landroidx/documentfile/provider/DocumentFile;Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 671
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->val$file:Landroidx/documentfile/provider/DocumentFile;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->val$holder:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 673
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->notDisplay:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 674
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->-$$Nest$mcanEdit(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 675
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2$1;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {p1, p0, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2$1;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 681
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetmActionModeCallback(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Landroid/view/ActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    .line 682
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 683
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_2

    .line 684
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;->val$holder:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
