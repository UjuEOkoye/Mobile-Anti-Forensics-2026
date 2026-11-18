.class Lcom/cbinnovations/androideraser/settings/Settings$7;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings;->initSecurity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/settings/Settings;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    new-instance p1, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->title(Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    const v0, 0x7f0d0006

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    new-instance v0, Lcom/cbinnovations/androideraser/settings/Settings$7$2;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/settings/Settings$7$2;-><init>(Lcom/cbinnovations/androideraser/settings/Settings$7;)V

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->show()Lcom/cocosw/bottomsheet/BottomSheet;

    move-result-object p1

    new-instance v0, Lcom/cbinnovations/androideraser/settings/Settings$7$1;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/settings/Settings$7$1;-><init>(Lcom/cbinnovations/androideraser/settings/Settings$7;)V

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
