.class public Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;
.super Ljava/lang/Object;
.source "PermissionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/PermissionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Struct"
.end annotation


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mPermission:[Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->mTitle:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->mDescription:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->mPermission:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()[Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->mPermission:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;->mTitle:Ljava/lang/String;

    return-object v0
.end method
