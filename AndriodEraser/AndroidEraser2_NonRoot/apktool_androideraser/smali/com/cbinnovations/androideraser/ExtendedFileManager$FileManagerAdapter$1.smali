.class Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 641
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$file:Landroidx/documentfile/provider/DocumentFile;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 643
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->notDisplay:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 644
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 645
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 646
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 647
    new-instance p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1$1;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {p1, p0, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1$1;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 652
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    new-instance p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1$2;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$file:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {p1, p0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1$2;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 660
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 662
    :goto_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const v2, 0x7f11007c

    invoke-virtual {v1, v2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void

    .line 664
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->val$file:Landroidx/documentfile/provider/DocumentFile;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->-$$Nest$misCurrentlyRoot(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$monItemClick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;Z)V

    return-void
.end method
