#include<stdio.h>
#include<unistd.h>
#include<fcntl.h>
#include<stdlib.h>
#define BUFFER_SIZE 1024

int main()
{
    int source_fd, dest_fd;
    ssize_t bytes_read, bytes_written;
    char buffer[BUFFER_SIZE];

    // open the source file for reading
    source_fd = open("use.c", O_RDONLY);
    if (source_fd == -1)
    {
        perror("Error opening source file");
        return 1;
    }

    // Open the destination for writing (create it if doesn't exist)
    dest_fd = open("xyz.c", O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (dest_fd == -1)
    {
        perror("ERROR Opening destnation file");
        close(source_fd);
        return 1;
    }

    // Read data from source file and write it in destination file
    while ((bytes_read = read(source_fd, buffer, BUFFER_SIZE)) > 0)
    {
        bytes_written = write(dest_fd, buffer, bytes_read);
        if (bytes_written != bytes_read)
        {
            perror("Error writing to destination file");
            close(source_fd);
            close(dest_fd);
            return 1;
        }
    }

    // Check if reading from the source file was successful
    if (bytes_read - 1)
    {
        perror("Error reading from source file");
    }

    // Close the files
    close(source_fd);
    close(dest_fd);
    printf("File copied successfully\n");
    return 0;
}
