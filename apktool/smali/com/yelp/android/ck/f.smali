.class public Lcom/yelp/android/ck/f;
.super Ljava/lang/Object;
.source "OnTwitterSettingChange.java"

# interfaces
.implements Lcom/yelp/android/ck/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ck/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ck/f;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/yelp/android/ck/f$a;

    invoke-direct {v0, p1}, Lcom/yelp/android/ck/f$a;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 52
    sget-object v1, Lcom/yelp/android/ck/f;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 53
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings$b;)V

    .line 57
    :goto_0
    const v0, 0x7f07051c

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showLoadingDialog(I)V

    .line 58
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b(Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    goto :goto_0
.end method
