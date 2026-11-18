.class public Lcom/cbinnovations/androideraser/MethodListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MethodListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private final context:Landroid/content/Context;

.field private final mData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodListAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/cbinnovations/androideraser/MethodListAdapter;->mData:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodListAdapter;->mData:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodListAdapter;->mData:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/MethodListAdapter;->getItem(I)Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 39
    iget-object p2, p0, Lcom/cbinnovations/androideraser/MethodListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0029

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 42
    :cond_0
    iget-object p3, p0, Lcom/cbinnovations/androideraser/MethodListAdapter;->mData:[Ljava/lang/Object;

    aget-object p1, p3, p1

    check-cast p1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    const p3, 0x7f08013e

    .line 43
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f08013c

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->getEraseMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v1

    iget-object v1, v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/MethodListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    iget-object v1, p0, Lcom/cbinnovations/androideraser/MethodListAdapter;->context:Landroid/content/Context;

    const v2, 0x7f110166

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->getEraseMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object p1

    iget p1, p1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
