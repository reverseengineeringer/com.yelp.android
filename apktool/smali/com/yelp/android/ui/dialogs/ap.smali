.class public Lcom/yelp/android/ui/dialogs/ap;
.super Ljava/lang/Object;
.source "FlagsDialog.java"


# instance fields
.field final a:Ljava/util/Locale;

.field final b:I


# direct methods
.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ap;->a:Ljava/util/Locale;

    .line 196
    iput p2, p0, Lcom/yelp/android/ui/dialogs/ap;->b:I

    .line 197
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/yelp/android/ui/dialogs/ap;->b:I

    return v0
.end method

.method public b()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ap;->a:Ljava/util/Locale;

    return-object v0
.end method
