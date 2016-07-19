.class public abstract Lcom/yelp/android/ck/a;
.super Ljava/lang/Object;
.source "ApiPreferenceKeyChangeListener.java"

# interfaces
.implements Lcom/yelp/android/ck/g;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/ck/a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    .line 19
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ck/a$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/yelp/android/ck/a$1;-><init>(Lcom/yelp/android/ck/a;Ljava/lang/String;Lcom/yelp/android/ui/activities/settings/ChangeSettings;I)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/yelp/android/appdata/ApiPreferences;->a(Ljava/lang/String;ILcom/yelp/android/appdata/ApiPreferences$b;)V

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ck/a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ck/a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 39
    return-void
.end method

.method abstract b(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V
.end method
