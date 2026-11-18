.class public final synthetic Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->lambda$showSummary$0(Landroid/view/View;Landroid/content/Context;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
