.class Lcom/yelp/android/ck/a$1;
.super Ljava/lang/Object;
.source "ApiPreferenceKeyChangeListener.java"

# interfaces
.implements Lcom/yelp/android/appdata/ApiPreferences$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ck/a;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ck/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ck/a;Ljava/lang/String;Lcom/yelp/android/ui/activities/settings/ChangeSettings;I)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yelp/android/ck/a$1;->d:Lcom/yelp/android/ck/a;

    iput-object p2, p0, Lcom/yelp/android/ck/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yelp/android/ck/a$1;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iput p4, p0, Lcom/yelp/android/ck/a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/yelp/android/ck/a$1;->d:Lcom/yelp/android/ck/a;

    iget-object v1, p0, Lcom/yelp/android/ck/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/ck/a;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ck/a$1;->d:Lcom/yelp/android/ck/a;

    iget-object v1, p0, Lcom/yelp/android/ck/a$1;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v2, p0, Lcom/yelp/android/ck/a$1;->a:Ljava/lang/String;

    iget v3, p0, Lcom/yelp/android/ck/a$1;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ck/a;->b(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V

    goto :goto_0
.end method
