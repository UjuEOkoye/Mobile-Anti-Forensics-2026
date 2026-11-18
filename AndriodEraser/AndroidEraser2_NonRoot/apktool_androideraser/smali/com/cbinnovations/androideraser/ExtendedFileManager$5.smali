.class Lcom/cbinnovations/androideraser/ExtendedFileManager$5;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

.field final synthetic val$first:I

.field final synthetic val$second:I


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;II)V
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

    .line 271
    iput p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->val$first:I

    iput p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->val$second:I

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 273
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fputclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    .line 275
    new-instance p1, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->title(Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    const v0, 0x7f0d0003

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$2;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$2;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$5;)V

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->show()Lcom/cocosw/bottomsheet/BottomSheet;

    move-result-object p1

    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;

    iget v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->val$first:I

    iget v2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->val$second:I

    invoke-direct {v0, p0, v1, v2}, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$5;II)V

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method
