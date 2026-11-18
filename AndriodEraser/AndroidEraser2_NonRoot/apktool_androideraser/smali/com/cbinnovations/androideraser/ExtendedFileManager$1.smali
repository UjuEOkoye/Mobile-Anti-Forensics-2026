.class Lcom/cbinnovations/androideraser/ExtendedFileManager$1;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager;
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

    .line 74
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 88
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f080040

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    const v0, 0x7f08004b

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->getItemCount()I

    move-result v0

    const-wide/16 v2, 0x0

    if-lt p2, v0, :cond_1

    .line 110
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iput-wide v2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedFiles:J

    .line 111
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iput-wide v2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedFiles:J

    .line 114
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->-$$Nest$fgetobjects(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    new-instance p2, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$2;

    invoke-direct {p2, p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$2;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$1;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 122
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const v2, 0x7f11007c

    invoke-virtual {v0, v2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->notifyDataSetChanged()V

    return v1

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 91
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/settings/Settings;->getDefaultMethod(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object p1

    if-nez p1, :cond_3

    .line 93
    new-instance p1, Lcom/cbinnovations/androideraser/MethodListAdapter;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    sget-object v0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mMethods:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    invoke-direct {p1, p2, v0}, Lcom/cbinnovations/androideraser/MethodListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 94
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110145

    .line 95
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$1;

    invoke-direct {v0, p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$1$1;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$1;Lcom/cbinnovations/androideraser/MethodListAdapter;)V

    .line 96
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 104
    :cond_3
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$mshowSummary(Lcom/cbinnovations/androideraser/ExtendedFileManager;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 77
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    .line 78
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const v1, 0x7f11007c

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 131
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedFiles:J

    .line 132
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    .line 133
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
