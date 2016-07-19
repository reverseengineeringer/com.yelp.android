.class Lcom/yelp/android/ui/util/j$1;
.super Ljava/lang/Object;
.source "CreateGoogleAccountAuthorizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/j;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/util/j;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/j;Lcom/yelp/android/ui/activities/ActivityCreateAccount;I)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/yelp/android/ui/util/j$1;->c:Lcom/yelp/android/ui/util/j;

    iput-object p2, p0, Lcom/yelp/android/ui/util/j$1;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iput p3, p0, Lcom/yelp/android/ui/util/j$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/util/j$1;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget v1, p0, Lcom/yelp/android/ui/util/j$1;->b:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(I)V

    .line 181
    return-void
.end method
