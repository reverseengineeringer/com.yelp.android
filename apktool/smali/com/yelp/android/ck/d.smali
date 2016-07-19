.class public Lcom/yelp/android/ck/d;
.super Ljava/lang/Object;
.source "OnFacebookSettingsChange.java"

# interfaces
.implements Lcom/yelp/android/ck/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ck/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Integer;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ck/d;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ck/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/yelp/android/ck/d;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 83
    iput-object p2, p0, Lcom/yelp/android/ck/d;->b:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/yelp/android/ck/d$a;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ck/d$a;-><init>(Lcom/yelp/android/ck/d;Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 85
    sget-object v1, Lcom/yelp/android/ck/d;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager$a;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    const v1, 0x7f07051c

    invoke-virtual {p1, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showLoadingDialog(I)V

    .line 89
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    goto :goto_0
.end method
