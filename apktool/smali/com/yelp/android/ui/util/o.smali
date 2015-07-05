.class Lcom/yelp/android/ui/util/o;
.super Ljava/lang/Object;
.source "CreateGoogleAccountAuthorizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/util/n;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/n;Lcom/yelp/android/ui/activities/ActivityCreateAccount;I)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yelp/android/ui/util/o;->c:Lcom/yelp/android/ui/util/n;

    iput-object p2, p0, Lcom/yelp/android/ui/util/o;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iput p3, p0, Lcom/yelp/android/ui/util/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/util/o;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget v1, p0, Lcom/yelp/android/ui/util/o;->b:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c(I)V

    .line 173
    return-void
.end method
