.class Lcom/cbinnovations/androideraser/ExtendedFileManager$4;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager;->initOnCreate()V
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

    .line 194
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemChanged(Landroidx/documentfile/provider/DocumentFile;ZZ)V
    .locals 4

    .line 196
    iget-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p3, p3, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p3, p3, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p3}, Landroid/view/ActionMode;->finish()V

    .line 197
    :cond_0
    iget-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    if-nez p1, :cond_1

    invoke-static {v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetrootStorages(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$msortContent(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ExtendedFileManager-IA;)V

    iput-object v0, p3, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    .line 199
    iget-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p3, p3, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-static {p3}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->-$$Nest$mcanEdit(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;)Z

    move-result p3

    const v0, 0x7f080042

    if-eqz p3, :cond_2

    .line 200
    iget-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p3, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$mshowOption(Lcom/cbinnovations/androideraser/ExtendedFileManager;I)V

    goto :goto_1

    .line 202
    :cond_2
    iget-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p3, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$mhideOption(Lcom/cbinnovations/androideraser/ExtendedFileManager;I)V

    .line 205
    :goto_1
    iget-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p3, p3, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-static {p3}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->-$$Nest$fgetobjects(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const v0, 0x7f08004d

    if-nez p3, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    .line 208
    :cond_3
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$mshowOption(Lcom/cbinnovations/androideraser/ExtendedFileManager;I)V

    goto :goto_3

    .line 206
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$mhideOption(Lcom/cbinnovations/androideraser/ExtendedFileManager;I)V

    .line 211
    :goto_3
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetrecycleView(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetanimationOut(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Landroid/view/animation/Animation;

    move-result-object p2

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetanimationIn(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Landroid/view/animation/Animation;

    move-result-object p2

    :goto_4
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 212
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance p2, Lcom/cbinnovations/androideraser/ExtendedFileManager$4$1;

    invoke-direct {p2, p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$4$1;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$4;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
