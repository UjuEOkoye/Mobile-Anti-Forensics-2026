.class public Lcom/cbinnovations/androideraser/PermissionAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermissionAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private error:Z

.field private final mData:[Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->error:Z

    .line 24
    iput-object p1, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->mData:[Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->mData:[Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    array-length v0, v0

    return v0
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

    .line 17
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/PermissionAdapter;->getItem(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)[Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->mData:[Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->getPermission()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 47
    iget-object p2, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0029

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f08013e

    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f08013c

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    iget-object v1, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->mData:[Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p3, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->mData:[Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p3, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->mData:[Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->getPermission()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 57
    iget-object p1, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->context:Landroid/content/Context;

    const p3, 0x7f050070

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2

    .line 58
    :cond_1
    iget-boolean p3, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->error:Z

    if-eqz p3, :cond_2

    if-nez p1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->context:Landroid/content/Context;

    const p3, 0x7f05030e

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2

    .line 61
    :cond_2
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 62
    iget-object p3, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x101030e

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 63
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p2
.end method

.method public setError()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/PermissionAdapter;->error:Z

    return-void
.end method
