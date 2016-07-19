.class public Lcom/facebook/share/model/AppInviteContent$a;
.super Ljava/lang/Object;
.source "AppInviteContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppInviteContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/AppInviteContent$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/share/model/AppInviteContent$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$a;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/share/model/AppInviteContent$a;->a:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public a()Lcom/facebook/share/model/AppInviteContent;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/facebook/share/model/AppInviteContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/AppInviteContent;-><init>(Lcom/facebook/share/model/AppInviteContent$a;Lcom/facebook/share/model/AppInviteContent$1;)V

    return-object v0
.end method
