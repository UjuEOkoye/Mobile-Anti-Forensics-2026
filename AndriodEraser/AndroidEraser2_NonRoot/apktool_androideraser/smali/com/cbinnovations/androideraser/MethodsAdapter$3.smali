.class synthetic Lcom/cbinnovations/androideraser/MethodsAdapter$3;
.super Ljava/lang/Object;
.source "MethodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/MethodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$ListItem$ViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cbinnovations/androideraser/MethodsAdapter$3;->$SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$ListItem$ViewType:[I

    :try_start_0
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cbinnovations/androideraser/MethodsAdapter$3;->$SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$ListItem$ViewType:[I

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
