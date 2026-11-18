.class public final synthetic Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/CheckBox;

.field public final synthetic f$1:Landroid/view/View$OnClickListener;

.field public final synthetic f$2:Landroid/app/AlertDialog;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;Landroid/view/View$OnClickListener;Landroid/app/AlertDialog;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$0:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$1:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$2:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$3:Landroid/view/View;

    iput-object p5, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$0:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$1:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$2:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$3:Landroid/view/View;

    iget-object v4, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;->f$4:Landroid/content/Context;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->lambda$showSummary$1(Landroid/widget/CheckBox;Landroid/view/View$OnClickListener;Landroid/app/AlertDialog;Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
