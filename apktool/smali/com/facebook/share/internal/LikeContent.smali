.class public Lcom/facebook/share/internal/LikeContent;
.super Ljava/lang/Object;
.source "LikeContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeContent$1;,
        Lcom/facebook/share/internal/LikeContent$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/share/internal/LikeContent$a;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/facebook/share/internal/LikeContent$a;->a(Lcom/facebook/share/internal/LikeContent$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeContent;->a:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/facebook/share/internal/LikeContent$a;->b(Lcom/facebook/share/internal/LikeContent$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeContent;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/LikeContent$a;Lcom/facebook/share/internal/LikeContent$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeContent;-><init>(Lcom/facebook/share/internal/LikeContent$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
